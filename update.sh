cp -u /home/pi/Desktop/*.sh ./scripts
cp -u /etc/mysql/my.cnf ./mysql
cp -u /etc/grafana/grafana.ini ./influxdb
cp -u /etc/influxdb/influxdb.conf ./influxdb
chown -R pi:pi .
