# secure-web-server-setup-with-logging
Linux administration project demonstrating Apache installation, firewall configuration, shell scripting, logging, and service management.

Project Overview

This project demonstrates how to install and configure an Apache web server on a Linux system while implementing basic security through firewall configuration. A Bash shell script automates the installation, service management, firewall setup, and logging of every step into a log file. The project also verifies the Apache service and firewall status to ensure a successful and secure web server deployment.

Objective

The objective of this project is to automate the setup of a secure Apache web server using Linux administration tools and shell scripting.

The project performs the following tasks:

Installs the Apache web server using the package manager.
Starts and enables the Apache service using systemctl.
Configures the firewall to allow only HTTP and SSH traffic.
Sets secure firewall default policies by denying all incoming connections except permitted services.
Logs every installation and configuration step into setup_log.txt.
Verifies the Apache service and firewall status after configuration.
Skills Covered

This project demonstrates practical Linux system administration skills, including:

Linux Package Management
Apache Web Server Installation
Service Management with systemctl
Firewall Configuration using ufw
Shell Scripting (Bash)
File Logging
Output Redirection (>, >>, 2>&1)
System Verification
Linux Security Best Practices
Command Line Administration
Technologies Used
Technology	Purpose
Ubuntu Linux	Operating System
Bash	Shell scripting
Apache2	Web Server
APT	Package Management
systemctl	Service Management
UFW	Firewall Configuration
Nano	Script Editing
Git	Version Control
GitHub	Project Hosting
Folder Structure
secure-web-server-setup-with-logging/
│
├── README.md
│
├── scripts/
│   └── apache_setup.sh
│
├── outputs/
│   └── setup_log.txt
│
├── screenshots/
│   ├── 01.package_update.png
│   ├── 02.apache_installation.png
│   ├── 03.apache_status.png
│   ├── 04.firewall_configuration.png
│   ├── 05.firewall_status.png
│   ├── 06.running_script.png
│   ├── 07.setup_log.png
│   ├── 08.apache_homepage.png
│   └── 09.port80_status.png
│
├── LICENSE
└── .gitignore
Project Workflow
Step 1 – Update Package Repository

The system package repository is updated to download the latest package information before installing Apache.

sudo apt update
Step 2 – Install Apache Web Server

Apache is installed using the APT package manager.

sudo apt install apache2 -y
Step 3 – Start and Enable Apache

The Apache service is started immediately and configured to start automatically after every system reboot.

sudo systemctl start apache2

sudo systemctl enable apache2
Step 4 – Configure Firewall

The firewall is configured with secure default policies.

Default configuration:

Deny all incoming connections
Allow all outgoing connections

Required services:

SSH (Port 22)
HTTP (Port 80)

Commands:

sudo ufw default deny incoming

sudo ufw default allow outgoing

sudo ufw allow ssh

sudo ufw allow http

sudo ufw enable
Step 5 – Test Apache

The Apache web server is tested by opening the server IP address or localhost in a web browser.

Example:

http://localhost

or

http://192.168.x.x

The Apache default web page should be displayed.

Step 6 – Create Logging Script

A Bash shell script automates the complete setup process.

The script performs:

Package update
Apache installation
Apache service management
Firewall configuration
Status verification
Log generation

All command outputs and errors are redirected into setup_log.txt.

Step 7 – Execute the Script

The script is made executable and executed.

chmod +x apache_setup.sh

./apache_setup.sh
Step 8 – Verify Installation

The installation is verified by checking:

Apache Service Status
Firewall Status
Port 80 Listening Status
Setup Log
Script Explanation

The Bash script performs the following operations:

1. Creates the Log File

Initializes setup_log.txt to record every installation and configuration step.

2. Updates Package Repository

Downloads the latest package information using the APT package manager.

3. Installs Apache

Installs Apache Web Server automatically using the -y option.

4. Starts Apache Service

Starts the Apache service using systemctl.

5. Enables Apache at Boot

Ensures Apache starts automatically whenever the system boots.

6. Configures Firewall

Applies secure firewall rules:

Deny all incoming traffic
Allow outgoing traffic
Allow SSH
Allow HTTP
7. Enables Firewall

Activates UFW using force mode to avoid interactive confirmation.

8. Logs Apache Status

Checks whether Apache is active and records the result.

9. Logs Firewall Status

Displays the configured firewall rules and stores them in the log file.

10. Completes Setup

Writes a completion message indicating successful execution.

Commands Used
Command	Description
apt update	Updates package repository
apt install apache2	Installs Apache Web Server
systemctl start apache2	Starts Apache service
systemctl enable apache2	Enables Apache at boot
systemctl status apache2	Checks Apache status
ufw default deny incoming	Blocks all incoming traffic
ufw default allow outgoing	Allows outgoing traffic
ufw allow ssh	Allows SSH connections
ufw allow http	Allows HTTP traffic
ufw enable	Enables the firewall
ufw status	Displays firewall rules
hostname -I	Displays system IP address
ss -tulpn	Displays listening ports
chmod +x	Makes the script executable
cat	Displays file contents
Screenshots

Include screenshots of the following:

Updating package repository (sudo apt update)
Installing Apache (sudo apt install apache2 -y)
Apache service status (systemctl status apache2)
Firewall configuration (ufw allow ssh and ufw allow http)
Firewall status (ufw status)
Running the shell script (./apache_setup.sh)
Viewing setup_log.txt
Apache default webpage in the browser
Port 80 verification (ss -tulpn | grep :80)

#Learning Outcome

Through this project, I gained practical experience in installing and managing an Apache web server on Linux. I learned how to automate server setup using Bash scripting, configure services with systemctl, secure a server using UFW firewall rules, log command execution for troubleshooting, and validate server functionality. This project strengthened my understanding of Linux system administration, shell scripting, web server deployment, and basic server security practices, which are essential skills for Linux Administrator, DevOps Engineer, and Cloud Engineer roles.
