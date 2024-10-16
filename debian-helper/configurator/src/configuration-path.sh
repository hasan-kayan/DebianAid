# Function: create_config_dir
# Description: Create the configuration directory if it does not exist
function create_config_dir() {
    CONFIG_DIR="$HOME/.myconfig"  # Change to your desired config directory
    
    if [ ! -d "$CONFIG_DIR" ]; then
        mkdir -p "$CONFIG_DIR"
        echo "Configuration directory created at $CONFIG_DIR."
    else
        echo "Configuration directory already exists at $CONFIG_DIR."
    fi
}
