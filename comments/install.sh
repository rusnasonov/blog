#!/bin/sh
mv remark.service /etc/systemd/system/remark.service
mv iptables.service /etc/systemd/system/iptables.service
chmod +x flush-iptables.sh
chown root:root docker-compose.yml
systemctl enable remark.service
systemctl enable iptables.service