#!/bin/bash
set -uo pipefail

ADDR_A="192.168.1.10"
ADDR_B="192.168.1.11"
DURATION=14400
RX_RATE="7.68e6"
RX_CHANNELS="0"
MONITOR_INTERVAL=30
UHD_PREFIX="${UHD_PREFIX:-/opt/antsdr-uhd}"
RESULT_DIR=""
NET_IFACE=""

usage() {
    cat <<'EOF'
usage: antsdr_dual_e200_stress.sh [options]

Run concurrent, continuous UHD RX streams against two E200 devices while
monitoring ICMP reachability and host/board Ethernet counters.

Options:
  --addr-a IP          First E200 address (default: 192.168.1.10)
  --addr-b IP          Second E200 address (default: 192.168.1.11)
  --duration SEC       Test duration (default: 14400, four hours)
  --rate SPS           RX rate per device (default: 7.68e6)
  --channels LIST      UHD RX channels, e.g. 0 or 0,1 (default: 0)
  --interface IFACE    Host network interface (default: route-derived)
  --monitor-interval N Counter snapshot interval (default: 30 seconds)
  --result-dir DIR     Result directory (default: timestamped directory)
  -h, --help           Show this help

Optional environment:
  UHD_PREFIX                ANTSDR UHD prefix (default: /opt/antsdr-uhd)
  ANTSDR_SSH_PASSWORD       Enable board-side ethtool/proc snapshots
  ANTSDR_SSH_USER           SSH user (default: root)

The aggregate RX wire rate for sc16 is approximately:
  device_count * channel_count * sample_rate * 32 bits/sample
Keep this below the practical capacity of the host's 1 GbE interface.
EOF
}

while [ "$#" -gt 0 ]; do
    case "$1" in
        --addr-a) ADDR_A="$2"; shift 2 ;;
        --addr-b) ADDR_B="$2"; shift 2 ;;
        --duration) DURATION="$2"; shift 2 ;;
        --rate) RX_RATE="$2"; shift 2 ;;
        --channels) RX_CHANNELS="$2"; shift 2 ;;
        --interface) NET_IFACE="$2"; shift 2 ;;
        --monitor-interval) MONITOR_INTERVAL="$2"; shift 2 ;;
        --result-dir) RESULT_DIR="$2"; shift 2 ;;
        -h|--help) usage; exit 0 ;;
        *) echo "unknown option: $1" >&2; usage >&2; exit 2 ;;
    esac
done

for value in "$DURATION" "$MONITOR_INTERVAL"; do
    case "$value" in
        ''|*[!0-9]*|0) echo "duration/interval must be positive integers" >&2; exit 2 ;;
    esac
done

UHD_BIN="${UHD_PREFIX}/bin"
UHD_EXAMPLES="${UHD_PREFIX}/lib/uhd/examples"
BENCHMARK="${UHD_EXAMPLES}/benchmark_rate"
PROBE="${UHD_BIN}/uhd_usrp_probe"
CONFIG_INFO="${UHD_BIN}/uhd_config_info"

for program in "$BENCHMARK" "$PROBE" "$CONFIG_INFO"; do
    if [ ! -x "$program" ]; then
        echo "missing executable: $program" >&2
        exit 1
    fi
done

export PATH="${UHD_BIN}:${PATH}"
export LD_LIBRARY_PATH="${UHD_PREFIX}/lib:${LD_LIBRARY_PATH:-}"
export UHD_IMAGES_DIR="${UHD_IMAGES_DIR:-${UHD_PREFIX}/share/uhd/images}"

if [ -z "$NET_IFACE" ]; then
    NET_IFACE="$(ip route get "$ADDR_A" | awk '{for (i=1; i<=NF; ++i) if ($i == "dev") {print $(i+1); exit}}')"
fi
if [ -z "$NET_IFACE" ] || [ ! -d "/sys/class/net/${NET_IFACE}" ]; then
    echo "could not determine host interface for $ADDR_A" >&2
    exit 1
fi

if [ -z "$RESULT_DIR" ]; then
    RESULT_DIR="${PWD}/dual_e200_stress_$(date +%Y%m%d_%H%M%S)"
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

snapshot_host() {
    local label="$1"
    {
        echo "timestamp=$(timestamp)"
        echo "label=$label"
        ip -s link show dev "$NET_IFACE"
        echo
        ethtool "$NET_IFACE" 2>&1 || true
        echo
        ethtool -S "$NET_IFACE" 2>&1 || true
    } >>"${RESULT_DIR}/host_nic.log"
}

snapshot_board() {
    local address="$1"
    local label="$2"
    local output="${RESULT_DIR}/board_${address}.log"
    if [ -z "${ANTSDR_SSH_PASSWORD:-}" ] || ! command -v sshpass >/dev/null 2>&1; then
        return
    fi
    {
        echo "timestamp=$(timestamp) label=$label"
        sshpass -p "$ANTSDR_SSH_PASSWORD" ssh \
            -o ConnectTimeout=3 -o StrictHostKeyChecking=no \
            -o UserKnownHostsFile=/dev/null \
            "${ANTSDR_SSH_USER:-root}@${address}" \
            "ethtool eth0 2>/dev/null; ethtool -S eth0 2>/dev/null; cat /proc/net/dev; dmesg | tail -40" \
            2>&1 || echo "board snapshot failed"
        echo
    } >>"$output"
}

monitor_counters() {
    while :; do
        snapshot_host periodic
        snapshot_board "$ADDR_A" periodic
        snapshot_board "$ADDR_B" periodic
        sleep "$MONITOR_INTERVAL"
    done
}

{
    echo "start_time=$(timestamp)"
    echo "addr_a=$ADDR_A"
    echo "addr_b=$ADDR_B"
    echo "duration=$DURATION"
    echo "rx_rate=$RX_RATE"
    echo "rx_channels=$RX_CHANNELS"
    echo "host_interface=$NET_IFACE"
    echo "uhd_prefix=$UHD_PREFIX"
    "$CONFIG_INFO" --version
    ldd "$PROBE" | grep libuhd || true
    ip route get "$ADDR_A"
    ip route get "$ADDR_B"
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

snapshot_host before
snapshot_board "$ADDR_A" before
snapshot_board "$ADDR_B" before

ping -D -i 1 "$ADDR_A" >"${RESULT_DIR}/ping_${ADDR_A}.log" 2>&1 &
PING_A_PID=$!; PIDS+=("$PING_A_PID")
ping -D -i 1 "$ADDR_B" >"${RESULT_DIR}/ping_${ADDR_B}.log" 2>&1 &
PING_B_PID=$!; PIDS+=("$PING_B_PID")
monitor_counters &
MONITOR_PID=$!; PIDS+=("$MONITOR_PID")

run_benchmark() {
    local address="$1"
    local output="${RESULT_DIR}/uhd_${address}.log"
    timeout --signal=INT --kill-after=30 "$((DURATION + 120))" \
        stdbuf -oL -eL "$BENCHMARK" \
        --args="addr=${address},product=E200" \
        --duration="$DURATION" \
        --rx_rate="$RX_RATE" \
        --rx_channels="$RX_CHANNELS" \
        --overrun-threshold=0 --drop-threshold=0 --seq-threshold=0 \
        >"$output" 2>&1
}

echo "$(timestamp) starting concurrent UHD streams" | tee -a "${RESULT_DIR}/TEST_INFO.txt"
run_benchmark "$ADDR_A" &
BENCH_A_PID=$!
run_benchmark "$ADDR_B" &
BENCH_B_PID=$!

wait "$BENCH_A_PID"; RC_A=$?
wait "$BENCH_B_PID"; RC_B=$?

for pid in "$PING_A_PID" "$PING_B_PID" "$MONITOR_PID"; do
    kill -TERM "$pid" 2>/dev/null || true
done
sleep 1
snapshot_host after
snapshot_board "$ADDR_A" after
snapshot_board "$ADDR_B" after

PIDS=()
trap - INT TERM EXIT

{
    echo "end_time=$(timestamp)"
    echo "benchmark_rc_${ADDR_A}=$RC_A"
    echo "benchmark_rc_${ADDR_B}=$RC_B"
    for address in "$ADDR_A" "$ADDR_B"; do
        echo
        echo "===== $address UHD summary ====="
        grep -E "Benchmark complete|Num received|Num dropped|overruns|sequence errors|timeouts|Done" \
            "${RESULT_DIR}/uhd_${address}.log" || true
        echo "===== $address ping summary ====="
        tail -5 "${RESULT_DIR}/ping_${address}.log" || true
    done
} | tee "${RESULT_DIR}/SUMMARY.txt"

echo "Results: $RESULT_DIR"
if [ "$RC_A" -ne 0 ] || [ "$RC_B" -ne 0 ]; then
    exit 1
fi
