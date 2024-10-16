source ../../../style.sh
# This script contains a function to prompt the user for configuration settings.
# The function `prompt_for_config` is designed to interactively gather configuration
# details from the user and save them for later use.
function prompt_for_config() {
    CONFIG_FILE="$CONFIG_DIR/config.json"
    
    print "Enter your configuration settings in JSON format:" "green" "black" "bold"
    read -r USER_CONFIG

    # Validate JSON format
    if echo "$USER_CONFIG" | jq empty; then
        echo "$USER_CONFIG" > "$CONFIG_FILE"
        print "Configuration saved to $CONFIG_FILE" "cyan" "black" "bold"
    else
      print "Invalid JSON format. Please try again." "red" "black" "bold"
        prompt_for_config  # Re-prompt
    fi
}

#  sudo apt-get install jq
#  sudo apt-get install curl