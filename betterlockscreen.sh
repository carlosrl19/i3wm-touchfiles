#!/bin/sh

# checks to see if i3lock is already running before running i3lock
if [[ $(pgrep i3lock) ]]; then # if i3lock is running, do nothing
	exit
else #if i3lock is not running, run it
	case $1 in
	     'lock'| '-l')
		betterlockscreen -l
		;;
	     'suspend'| '-s')
		betterlockscreen -l &
		sleep 0.5 && systemctl suspend
		;;
	     'hibernate'| '-h')
		betterlockscreen -l &
		sleep 0.5 && systemctl hibernate
		;;
	     *)
	esac
fi