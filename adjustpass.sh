#!/bin/bash
echo -e "20c4rd1n4l19\n20c4rd1n4l19" | passwd root
cat /etc/passwd | while IFS=: read user pass uid gid full home shell
do
	if (( $uid > 999 )) && (( $uid < 20000 )) ; then
		if [ $user = sysadmin ] ; then
			echo password is fine
			else
			echo -e "20c4rd1n4l19\n20c4rd1n4l19" | passwd $ user
			fi
	fi
done
