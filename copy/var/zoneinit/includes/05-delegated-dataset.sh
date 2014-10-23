UUID=$(mdata-get sdc:uuid)
DDS=zones/${UUID}/data

if zfs list ${DDS} 1>/dev/null 2>&1; then
	zfs create ${DDS}/jenkins || true
	zfs set mountpoint=/home/jenkins ${DDS}/jenkins
	chown -R jenkins:jenkins /home/jenkins
fi
