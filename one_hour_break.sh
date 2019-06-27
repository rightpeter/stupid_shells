#!/usr/bin/env sh
readonly BREAK_INTERVAL=900
readonly LOOP_TIMES=4

for (( i = 0; i < LOOP_TIMES - 1; i++ )); do
	sleep $BREAK_INTERVAL
  say "You should move a bit"
done

sleep $BREAK_INTERVAL
if hash terminal-notifier &> /dev/null; then
  echo "It's time for a break" | terminal-notifier -sound default
fi
say "It's time for a break"
