#!bin/bash

if (( $EUID != 0)); then
	echo "Please use SUDO to run the script, i.e the command should have a look 'sudo bash auto_update.sh' "
	exit
fi

(crontab -l ; echo "30 0 * * 1 apt-get update --yes > /var/log/update-$(date "+%Y%m%d").log" ; echo "45 0 * * 1 apt-get upgrade --yes >> /var/log/update-$(date "+%Y%m%d").log") | crontab - 
