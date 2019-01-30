#!/bin/sh

# Stop filebeat if it's already running...
if [ -f /usr/local/etc/rc.d/filebeat ]; then
  echo -n "Stopping filebeat service..."
  /usr/sbin/service filebeat stop
  echo " done."
fi

#Remove current version and config
echo "Removing filebeat..."
/usr/sbin/pkg remove -y beats
/bin/rm /usr/local/etc/rc.d/filebeat.sh
/bin/rm /usr/local/etc/filebeat.yml
echo " done."
