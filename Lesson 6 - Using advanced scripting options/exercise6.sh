#!/bin/bash

# Create a user helpdesk. Write a menu script that is started automatically when
# this user logs in. The menu script should never be terminated, unless the user
# logs out (which is a menu option as well). From this menu, make at least the 
# following options available: 1) Reset password, 2) Show disk usage, 3) Ping a 
# host, 4) Log out.

# Bonus question: modify this script and related configuration so that the user 
# can use `sudo` to set passwords for other users as well.

while true
do
	trap "echo NOPE" INT
	pinghost()
	{
		echo "Which host do you want to ping?"
		read HOSTNAME
		ping $HOSTNAME
	}

	echo "Select option: "
	select TASK in "Change password" "Monitor disk space" "Ping a host" "Logout"
	do
		case $REPLY in
			1) TASK=passwd;;
			2) TASK="df -h";;
			3) TASK=pinghost;;
			4) TASK=exit;;
		esac

		if [ -n "task" ]
		then
			$TASK
			break
		else
			echo INVALID CHOICE
		fi
	done
done

exit 0