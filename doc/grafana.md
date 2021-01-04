# Grafana Installation
Source: https://grafana.com/tutorials/install-grafana-on-raspberry-pi/
```
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install -y grafana
sudo /bin/systemctl enable grafana-server
sudo /bin/systemctl start grafana-server

sudo update-rc.d grafana-server defaults
```

# Grafana setup
Connect with browser `http://<ip>:3000`\
Add new Database with `http://<ip>:8086` and database name `tempdb` to query `temperature`
