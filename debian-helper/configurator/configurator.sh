#!/bin/bash

source ./src/config-reader.sh
source ./src/config-saver.sh
source ./src/configuration-path.sh


# Function: main
function main() {
    echo -e "\e[34mDebianAid Configuration\e[0m"
    # check if there is a config path and create it if it does not exist
    create_config_dir
    prompt_for_config
}

# Execute main function
main
