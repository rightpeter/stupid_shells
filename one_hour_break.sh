#!/usr/bin/env sh
readonly BREAK_INTERVAL=900
readonly LOOP_TIMES=4

echo "`date`: Start"

for (( i = 1; i < LOOP_TIMES; i++ )); do
	 sleep $BREAK_INTERVAL
  say "You should move a bit"
	TMP_TIME=$((i * BREAK_INTERVAL / 60))
	echo "`date`: move a bit ($TMP_TIME min)"
done

sleep $BREAK_INTERVAL
if hash terminal-notifier &> /dev/null; then
  echo "It's time for a break" | terminal-notifier -sound default
fi
say "It's time for a break"
