#!/bin/bash
LOGFILE="setup_log.txt"
echo "===== Apache Setup Started =====" > "$LOGFILE"
echo "Updating packages..." >> "$LOGFILE"
sudo apt update >> "$LOGFILE" 2>&1
echo "Installing Apache..." >> "$LOGFILE"
sudo apt install apache2 -y >> "$LOGFILE" 2>&1
echo "Starting Apache..." >> "$LOGFILE"
sudo systemctl start apache2 >> "$LOGFILE" 2>&1
echo "Enabling Apache..." >> "$LOGFILE"
sudo systemctl enable apache2 >> "$LOGFILE" 2>&1
echo "Configuring Firewall..." >> "$LOGFILE"
sudo ufw default deny incoming >> "$LOGFILE" 2>&1
sudo ufw default allow outgoing >> "$LOGFILE" 2>&1
sudo ufw allow ssh >> "$LOGFILE" 2>&1
sudo ufw allow http >> "$LOGFILE" 2>&1
sudo ufw --force enable >> "$LOGFILE" 2>&1
echo "Apache Status:" >> "$LOGFILE"
sudo systemctl is-active apache2 >> "$LOGFILE" 2>&1
echo "Firewall Status:" >> "$LOGFILE"
sudo ufw status >> "$LOGFILE" 2>&1
echo "===== Setup Completed =====" >> "$LOGFILE"
