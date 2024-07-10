sudo apt update
sudo apt install -y mosquitto mosquitto-clients

sudo snap remove mosquitto

# TODO 
sudo cp harold.conf /etc/mosquitto/conf.d/harold.conf
sudo chmod 0700 /etc/mosquitto/conf.d/harold.conf
sudo chown mosquitto:mosquitto /etc/mosquitto/conf.d/harold.conf

#sudo cd /var/run/mosquitto
#sudo mkdir -m 777 mosquitto 
#cd -

#sudo mosquitto_passwd -c /etc/mosquitto/passwd username
sudo mosquitto_passwd -c /etc/mosquitto/passwd home
sudo chown mosquitto:mosquitto /etc/mosquitto/passwd
sudo chmod 0700 /etc/mosquitto/passwd


sudo systemctl restart mosquitto
