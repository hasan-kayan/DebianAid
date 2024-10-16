source ../../style.sh   # Change to the path of your style.sh file
# Function: create_config_dir
# Description: Create the configuration directory if it does not exist
function create_config_dir() {
    CONFIG_DIR="$HOME/.myconfig"  # Change to your desired config directory
    
    if [ ! -d "$CONFIG_DIR" ]; then
        mkdir -p "$CONFIG_DIR"
        print "Configuration directory created at $CONFIG_DIR" "cyan" "black" "bold"
        
    else
        print "Configuration directory already exists at $CONFIG_DIR" "yellow" "black" "bold"
    fi
}
