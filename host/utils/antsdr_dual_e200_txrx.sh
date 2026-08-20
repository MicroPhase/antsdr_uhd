#!/bin/bash
set -uo pipefail

# Run a full-duplex UHD stream on two ANTSDR-E200 devices at the same time.
# benchmark_rate supplies the UHD RX/TX implementation; this wrapper keeps
# the two devices independent and records a comparable result for each one.

ADDR_A="192.168.1.10"
ADDR_B="192.168.1.12"
DURATION=30
RATE="1e6"
RX_CHANNELS="0"
TX_CHANNELS="0"
UHD_PREFIX="${UHD_PREFIX:-/opt/antsdr-uhd}"
RESULT_DIR=""
MONITOR_INTERVAL=10

usage() {
    cat <<'EOF'
usage: antsdr_dual_e200_txrx.sh [options]

Run simultaneous UHD full-duplex RX/TX streams on two E200 devices.

Options:
  --addr-a IP          First E200 address (default: 192.168.1.10)
  --addr-b IP          Second E200 address (default: 192.168.1.12)
  --duration SEC       Stream duration (default: 30)
  --rate SPS           RX and TX rate per device (default: 1e6)
  --rx-channels LIST   RX channels, e.g. 0 or 0,1 (default: 0)
  --tx-channels LIST   TX channels, e.g. 0 or 0,1 (default: 0)
  --monitor-interval N Board snapshot interval in seconds (default: 10)
  --result-dir DIR     Result directory (default: timestamped directory)
  -h, --help           Show this help

Optional environment:
  UHD_PREFIX              ANTSDR UHD prefix (default: /opt/antsdr-uhd)
  ANTSDR_SSH_PASSWORD     Enable board-side ethtool/proc/dmesg snapshots
  ANTSDR_SSH_USER         SSH user (default: root)

The default aggregate wire rate is approximately 128 Mbit/s for two devices
(one RX and one TX sc16 stream at 1 MS/s per device). Increase --rate only
after confirming that the host and switch have sufficient headroom. Use a
50-ohm load or suitable attenuator on RF TX ports during a hardware test.
EOF
}

while [ "$#" -gt 0 ]; do
    case "$1" in
        --addr-a) ADDR_A="$2"; shift 2 ;;
        --addr-b) ADDR_B="$2"; shift 2 ;;
        --duration) DURATION="$2"; shift 2 ;;
        --rate) RATE="$2"; shift 2 ;;
        --rx-channels) RX_CHANNELS="$2"; shift 2 ;;
        --tx-channels) TX_CHANNELS="$2"; shift 2 ;;
        --monitor-interval) MONITOR_INTERVAL="$2"; shift 2 ;;
        --result-dir) RESULT_DIR="$2"; shift 2 ;;
        -h|--help) usage; exit 0 ;;
        *) echo "unknown option: $1" >&2; usage >&2; exit 2 ;;
    esac
done

for value in "$DURATION" "$MONITOR_INTERVAL"; do
    case "$value" in
        ''|*[!0-9]*|0) echo "duration/monitor interval must be positive integers" >&2; exit 2 ;;
    esac
done

UHD_BIN="${UHD_PREFIX}/bin"
UHD_EXAMPLES="${UHD_PREFIX}/lib/uhd/examples"
BENCHMARK="${UHD_EXAMPLES}/benchmark_rate"
PROBE="${UHD_BIN}/uhd_usrp_probe"

for program in "$BENCHMARK" "$PROBE"; do
    if [ ! -x "$program" ]; then
        echo "missing executable: $program" >&2
        exit 1
    fi
done

export PATH="${UHD_BIN}:${PATH}"
export LD_LIBRARY_PATH="${UHD_PREFIX}/lib:${LD_LIBRARY_PATH:-}"
export UHD_IMAGES_DIR="${UHD_IMAGES_DIR:-${UHD_PREFIX}/share/uhd/images}"

if [ -z "$RESULT_DIR" ]; then
    RESULT_DIR="${PWD}/dual_e200_txrx_$(date +%Y%m%d_%H%M%S)"
fi
mkdir -p "$RESULT_DIR"
RESULT_DIR="$(cd "$RESULT_DIR" && pwd)"

PIDS=()
cleanup() {
    local pid
    for pid in "${PIDS[@]:-}"; do
        if kill -0 "$pid" 2>/dev/null; then kill -INT "$pid" 2>/dev/null || true; fi
    done
    sleep 1
    for pid in "${PIDS[@]:-}"; do
        if kill -0 "$pid" 2>/dev/null; then kill -TERM "$pid" 2>/dev/null || true; fi
    done
}
trap cleanup INT TERM EXIT

timestamp() { date --iso-8601=seconds; }

snapshot_board() {
    local address="$1"
    if [ -z "${ANTSDR_SSH_PASSWORD:-}" ] || ! command -v sshpass >/dev/null 2>&1; then
        return
    fi
    {
        echo "timestamp=$(timestamp)"
        sshpass -p "$ANTSDR_SSH_PASSWORD" ssh \
            -o ConnectTimeout=3 -o StrictHostKeyChecking=no \
            -o UserKnownHostsFile=/dev/null \
            "${ANTSDR_SSH_USER:-root}@${address}" \
            "ethtool -S eth0 2>/dev/null; cat /proc/net/dev; dmesg | tail -40" \
            2>&1 || echo "board snapshot failed"
        echo
    } >>"${RESULT_DIR}/board_${address}.log"
}

monitor_boards() {
    while :; do
        snapshot_board "$ADDR_A"
        snapshot_board "$ADDR_B"
        sleep "$MONITOR_INTERVAL"
    done
}

{
    echo "start_time=$(timestamp)"
    echo "addr_a=$ADDR_A"
    echo "addr_b=$ADDR_B"
    echo "duration=$DURATION"
    echo "rx_rate=$RATE"
    echo "tx_rate=$RATE"
    echo "rx_channels=$RX_CHANNELS"
    echo "tx_channels=$TX_CHANNELS"
    echo "uhd_prefix=$UHD_PREFIX"
    "$UHD_BIN/uhd_config_info" --version 2>/dev/null || true
    ldd "$PROBE" | grep libuhd || true
} | tee "${RESULT_DIR}/TEST_INFO.txt"

for address in "$ADDR_A" "$ADDR_B"; do
    if ! ping -q -c 3 -W 1 "$address"; then
        echo "preflight ping failed: $address" | tee -a "${RESULT_DIR}/TEST_INFO.txt" >&2
        exit 1
    fi
    if ! timeout 20 "$PROBE" --args="addr=${address},product=E200" \
        >"${RESULT_DIR}/probe_${address}.log" 2>&1; then
        echo "preflight UHD probe failed: $address" | tee -a "${RESULT_DIR}/TEST_INFO.txt" >&2
        exit 1
    fi
done

snapshot_board "$ADDR_A"
snapshot_board "$ADDR_B"
monitor_boards &
MONITOR_PID=$!
PIDS+=("$MONITOR_PID")

run_benchmark() {
    local address="$1"
    timeout --signal=INT --kill-after=30 "$((DURATION + 120))" \
        stdbuf -oL -eL "$BENCHMARK" \
        --args="addr=${address},product=E200" \
        --duration="$DURATION" \
        --rx_rate="$RATE" \
        --tx_rate="$RATE" \
        --rx_channels="$RX_CHANNELS" \
        --tx_channels="$TX_CHANNELS" \
        --overrun-threshold=0 --underrun-threshold=0 \
        --drop-threshold=0 --seq-threshold=0 \
        >"${RESULT_DIR}/uhd_${address}.log" 2>&1
}

echo "$(timestamp) starting simultaneous UHD RX/TX streams" | tee -a "${RESULT_DIR}/TEST_INFO.txt"
run_benchmark "$ADDR_A" &
BENCH_A_PID=$!
run_benchmark "$ADDR_B" &
BENCH_B_PID=$!

wait "$BENCH_A_PID"; RC_A=$?
wait "$BENCH_B_PID"; RC_B=$?

kill -TERM "$MONITOR_PID" 2>/dev/null || true
sleep 1
snapshot_board "$ADDR_A"
snapshot_board "$ADDR_B"

PIDS=()
trap - INT TERM EXIT

{
    echo "end_time=$(timestamp)"
    echo "benchmark_rc_${ADDR_A}=$RC_A"
    echo "benchmark_rc_${ADDR_B}=$RC_B"
    for address in "$ADDR_A" "$ADDR_B"; do
        echo
        echo "===== $address UHD full-duplex summary ====="
        grep -E "Benchmark complete|Num received|Num transmitted|Num dropped|overruns|underruns|sequence errors|timeouts|Done" \
            "${RESULT_DIR}/uhd_${address}.log" || true
    done
} | tee "${RESULT_DIR}/SUMMARY.txt"

echo "Results: $RESULT_DIR"
if [ "$RC_A" -ne 0 ] || [ "$RC_B" -ne 0 ]; then
    exit 1
fi
