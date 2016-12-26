UUID=$(mdata-get sdc:uuid)
DDS=zones/${UUID}/data

if zfs list ${DDS} 1>/dev/null 2>&1; then
	zfs create -p ${DDS}/home/jenkins          || true
	zfs create -p ${DDS}/home/jenkins/.jenkins || true
	zfs set mountpoint=/home/jenkins/ ${DDS}/home/jenkins
	zfs set mountpoint=/home/jenkins/.jenkins ${DDS}/home/jenkins/.jenkins
	chown -R jenkins:jenkins /home/jenkins
fi
