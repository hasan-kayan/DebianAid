# style.sh

# Text color variables
BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
RESET="\e[0m"  # Reset to default color

# Function to print text in blue
function print_blue() {
    echo -e "${BLUE}$1${RESET}"
}

# Function to print text in green
function print_green() {
    echo -e "${GREEN}$1${RESET}"
}

# Function to print text in red
function print_red() {
    echo -e "${RED}$1${RESET}"
}

# Function to print text in yellow
function print_yellow() {
    echo -e "${YELLOW}$1${RESET}"
}


# A function that will take string and display it in red color

function print_message(string) {
    echo -e "\e[91m$string\e[0m"
}

