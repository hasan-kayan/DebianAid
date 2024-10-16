#!/bin/bash

# Function to print text with different colors and styles
print() {
    local text="$1"          # The text to be printed
    local text_color="$2"    # Foreground (text) color
    local bg_color="$3"      # Background color
    local text_style="$4"    # Text style (bold, underline, etc.)

    # Define text color codes
    case $text_color in
        "black") text_color_code="\e[30m" ;;
        "red") text_color_code="\e[31m" ;;
        "green") text_color_code="\e[32m" ;;
        "yellow") text_color_code="\e[33m" ;;
        "blue") text_color_code="\e[34m" ;;
        "magenta") text_color_code="\e[35m" ;;
        "cyan") text_color_code="\e[36m" ;;
        "white") text_color_code="\e[37m" ;;
        *) text_color_code="\e[39m" ;;  # Default text color
    esac

    # Define background color codes
    case $bg_color in
        "black") bg_color_code="\e[40m" ;;
        "red") bg_color_code="\e[41m" ;;
        "green") bg_color_code="\e[42m" ;;
        "yellow") bg_color_code="\e[43m" ;;
        "blue") bg_color_code="\e[44m" ;;
        "magenta") bg_color_code="\e[45m" ;;
        "cyan") bg_color_code="\e[46m" ;;
        "white") bg_color_code="\e[47m" ;;
        *) bg_color_code="\e[49m" ;;  # Default background color
    esac

    # Define text style codes
    case $text_style in
        "bold") text_style_code="\e[1m" ;;
        "dim") text_style_code="\e[2m" ;;
        "underline") text_style_code="\e[4m" ;;
        "blink") text_style_code="\e[5m" ;;
        "invert") text_style_code="\e[7m" ;;
        *) text_style_code="\e[0m" ;;  # Default style (normal)
    esac

    # Print the text with the selected color, background, and style
    echo -e "${text_style_code}${text_color_code}${bg_color_code}${text}\e[0m"
}

# Example usage
# print "Hello, World!" "green" "black" "bold"
# print "Error: File not found!" "red" "white" "underline"
# print "Important Message" "blue" "yellow" "invert"
# print "Regular text" "white" "black" "normal"
