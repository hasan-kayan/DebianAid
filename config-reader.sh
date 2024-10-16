source ./style.sh
# Function: read_config
# Description: Reads configuration settings from a specified configuration file.
# Parameters: None
# Returns: None
function read_config() {
    CONFIG_FILE="$CONFIG_DIR/config.json"
    
    if [ -f "$CONFIG_FILE" ]; then
        print "Reading configuration from $CONFIG_FILE" "magenta" "black" "bold"
        cat "$CONFIG_FILE"
    else
        print "Configuration file not found at $CONFIG_FILE" "red" "black" "bold"
    fi
}