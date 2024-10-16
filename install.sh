#!/bin/bash

# This script installs necessary packages and sets up the Debian Helper service.

# Function to update the system
update_system() {
    echo -e "\e[34mUpdating system...\e[0m"
    sudo apt update && sudo apt upgrade -y
}

# Function to install required packages
install_packages() {
    echo -e "\e[34mInstalling required packages...\e[0m"
    sudo apt-get install -y curl jq
}

# Function to create a systemd service
create_service() {
    SERVICE_FILE="/etc/systemd/system/debian-helper.service"

    echo -e "\e[34mCreating systemd service...\e[0m"
    cat <<EOF | sudo tee $SERVICE_FILE > /dev/null
[Unit]
Description=Debian Helper Service

[Service]
ExecStart=/bin/bash /path/to/debian-helper/main.sh
Restart=always
User=$(whoami)

[Install]
WantedBy=multi-user.target
EOF

    # Enable and start the service
    sudo systemctl daemon-reload
    sudo systemctl enable debian-helper.service
    sudo systemctl start debian-helper.service

    echo -e "\e[32mSystemd service created and started successfully.\e[0m"
}

# Main script execution
echo -e "\e[34mStarting installation...\e[0m"

update_system
install_packages
create_service

echo -e "\e[32mInstallation completed successfully!\e[0m"
