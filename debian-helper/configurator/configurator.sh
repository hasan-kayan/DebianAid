#!/bin/bash

source ./src/config-reader.sh
source ./src/config-saver.sh
source ./src/configuration-path.sh
source ../../style.sh

# Function: main
function main() {   
    print "DebianAid Configuration" "green" "black" "bold"
    # check if there is a config path and create it if it does not exist
    create_config_dir
    prompt_for_config
}

# Execute main function
main
