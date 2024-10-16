source ./style.sh
#!/bin/bash
# This script installs necessary packages and sets up the Debian Helper service.
# Function to update the system
update_system() {
    print "Updating system..." "green" "black" "bold"
    sudo apt update && sudo apt upgrade -y
}

# Function to install required packages
install_packages() {
    print "Installing required packages..." "green" "black" "bold"
    sudo apt-get install -y curl jq
}

# Function to create a systemd service
create_service() {
    SERVICE_FILE="/etc/systemd/system/debian-helper.service"

    print "Creating systemd service..." "green" "black" "bold"
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

   print "Systemd service created and started successfully. " "green" "black" "bold"
}

# Main script execution
print "Starting installation..." "green" "black" "bold"

update_systemy
install_packages
create_service

print "Installation complete." "green" "black" "bold"
