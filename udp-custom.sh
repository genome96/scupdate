#!/bin/bash

cd
rm -rf /root/udp
mkdir -p /root/udp

# Change to GMT+3 timezone
echo "Changing to GMT+3 timezone"
ln -fs /usr/share/zoneinfo/Africa/Nairobi /etc/localtime

# Install udp-custom
echo "Downloading udp-custom"
mkdir -p /root/udp && cd /root/udp && wget -q https://raw.githubusercontent.com/genome96/scupdate/main/udp/udp-custom-linux-amd64
chmod +x /root/udp/udp-custom

echo "Downloading default config"
cd /root/udp && wget -q https://raw.githubusercontent.com/genome96/scupdate/main/udp/config.json
chmod 644 /root/udp/config.json

if [ -z "$1" ]; then
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=UDP Custom by ePro Dev. Team

[Service]
User=root
Type=simple
ExecStart=/root/udp/udp-custom server
WorkingDirectory=/root/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
else
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=UDP Custom by ePro Dev. Team

[Service]
User=root
Type=simple
ExecStart=/root/udp/udp-custom server -exclude $1
WorkingDirectory=/root/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
fi

echo "Starting udp-custom service"
systemctl start udp-custom &>/dev/null

echo "Enabling udp-custom service"
systemctl enable udp-custom &>/dev/null

rmdir /root/udp

clear
echo -e ""
read -p "Press Enter to go back to the menu"
menu