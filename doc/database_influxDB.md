- Copy `src/temp.sh` on rpi4 to `$HOME`, `chmod +x temp.sh`
- Create cron job `crontab -e`, add `*/1 * * * * /home/ubuntu/temp.sh`
- Install InfluxDB `sudo apt-get install influxdb`
- Launch deamon `sudo systemctl start influxdb` + `sudo update-rc.d influxdb defaults`
- Verify daemon status `sudo systemctl status influxdb`
- Create database
  ```
  $ influx
  CREATE DATABASE tempdb
  use tempdb
  select * from temperature
  ```
