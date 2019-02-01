#!/bin/sh

# Stop filebeat if it's running...
if [ -f /usr/local/etc/rc.d/filebeat ]; then
  echo -n "Stopping filebeat service..."
  /usr/sbin/service filebeat stop
  echo " done."
fi

#Remove including config
echo "Removing filebeat..."
/usr/sbin/pkg remove -y beats
/bin/rm /usr/local/etc/rc.d/filebeat.sh
/bin/rm /usr/local/etc/filebeat.yml
/bin/rm /etc/rc.conf.local
/bin/rm /usr/local/etc/ELK-CA.crt
/bin/rm /usr/local/etc/beats.flevocloud.nl.crt
/bin/rm /usr/local/etc/beats.flevocloud.nl.key
echo " done."
