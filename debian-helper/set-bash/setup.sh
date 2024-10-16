#!/bin/bash
source ../style.sh

# Git Configuration
echo "Configuring Git..."
git config --global user.name "Your Name"  # Replace with your actual name
git config --global user.email "your_email@example.com"  # Replace with your actual email

# Python Installation Check 
if command -v python3 &>/dev/null; then
    printf "Python 3 is already installed." "yellow" "black" "bold" 
else
  print "Python 3 is not installed. Installing Python 3..." "green" "black" "bold"
    apt install -y python3
fi

# Pip Installation Check
if command -v pip3 &>/dev/null; then
    print "pip is already installed." "yellow" "black" "bold"
else
    print "pip is not installed. Installing pip..." "green" "black" "bold"
    apt install -y python3-pip
fi

# venv check
if python3 -m venv --help &>/dev/null; then
   print "venv is already installed." "yellow" "black" "bold"
else
    print "venv is not installed. Installing venv..." "green" "black" "bold"
    apt install -y python3-venv
fi

print "All required packages are installed." "green" "black" "bold"

# Node.js Installation Check
if command -v node &>/dev/null; then
    print  "Node.js is already installed." "yellow" "black" "bold"
else
    print "Node.js is not installed. Installing Node.js..." "green" "black" "bold"
    curl -sL https://deb.nodesource.com/setup_14.x | bash -
    apt install -y nodejs
fi

# NPM Installation Check
if command -v npm &>/dev/null; then
    print "npm is already installed." "yellow" "black" "bold"
else
    print "npm is not installed. Installing npm..." "green" "black" "bold"
    apt install -y npm
fi

# Yarn Installation Check
if command -v yarn &>/dev/null; then
    print  "yarn is already installed." "yellow" "black" "bold"
else
    print "yarn is not installed. Installing yarn..." "green" "black" "bold"    
    npm install -g yarn
fi

print "All required packages are installed." "green" "black" "underline"

# Docker Installation Check
if command -v docker &>/dev/null; then
    echo "Docker is already installed." "yellow" "black" "bold"
else
    print "Docker is not installed. Installing Docker..." "green" "black" "bold"
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    usermod -aG docker "$USER"
    rm get-docker.sh
fi

# Docker Compose Installation Check
if command -v docker-compose &>/dev/null; then
    print "Docker Compose is already installed." "yellow" "black" "bold"
else
    print "Docker Compose is not installed. Installing Docker Compose..." "green" "black" "bold"
    apt install -y docker-compose
fi
print "SYSTEM SETUP COMPLETE 🚀" "green" "black" "bold" "underline"
