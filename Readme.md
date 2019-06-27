# Stupid shells

## One Hour Break Reminder

	brew install terminal-notifier
	# Add this script to /usr/local/bin
	ln -s $(pwd)/one_hour_break.sh /usr/local/bin/one_hour_break

Then, you can call `one_hour_break &` at the begining of your one hour session.
