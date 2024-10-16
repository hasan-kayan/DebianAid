# Function: read_config
# Description: Reads configuration settings from a specified configuration file.
# Parameters: None
# Returns: None
function read_config() {
    CONFIG_FILE="$CONFIG_DIR/config.json"
    
    if [ -f "$CONFIG_FILE" ]; then
        echo "Reading configuration from $CONFIG_FILE"
        cat "$CONFIG_FILE"
    else
        echo "No configuration found at $CONFIG_FILE"
    fi
}