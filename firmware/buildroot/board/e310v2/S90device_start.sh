case "$1" in
	start)
		echo -n "Starting device start : "
		start-stop-daemon --start --background /sbin/e310v2
		start-stop-daemon --start --background /sbin/net_set
		[ $? = 0 ] && echo "OK" || echo "FAIL"
		;;

	stop)
		echo -n "Stopping device stop: "
		start-stop-daemon --stop --name /sbin/e200
		start-stop-daemon --stop --name /sbin/net_set
		[ $? = 0 ] && echo "OK" || echo "FAIL"
		;;

	restart)
		$0 stop
		sleep 1
		$0 start
		;;

	*)
		echo "Usage: $0 {start|stop|restart}"
		exit 1
esac