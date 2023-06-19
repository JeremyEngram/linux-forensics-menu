#!/bin/bash

log_file="forensics.log"

# Function to display the menu
show_menu() {
    clear
    echo "=== Linux Forensics Tools Menu ==="
    echo "1. Volatility"
    echo "2. The Sleuth Kit (TSK)"
    echo "3. Autopsy"
    echo "4. Scalpel"
    echo "5. ddrescue"
    echo "6. TestDisk"
    echo "7. Foremost"
    echo "8. Guymager"
    echo "9. Chkrootkit"
    echo "10. rkhunter"
    echo "11. ClamAV"
    echo "12. Log2timeline"
    echo "0. Exit"
    echo "==============================="
}

# Function to handle user input and execute commands
handle_input() {
    read -p "Enter your choice (0-12): " choice
    case $choice in
        1) run_command "Volatility" ;;
        2) run_command "The Sleuth Kit (TSK)" ;;
        3) run_command "Autopsy" ;;
        4) run_command "Scalpel" ;;
        5) run_command "ddrescue" ;;
        6) run_command "TestDisk" ;;
        7) run_command "Foremost" ;;
        8) run_command "Guymager" ;;
        9) run_command "Chkrootkit" ;;
        10) run_command "rkhunter" ;;
        11) run_command "ClamAV" ;;
        12) run_command "Log2timeline" ;;
        0) echo "Exiting..." && exit 0 ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
}

# Function to execute a command and log the output
run_command() {
    command_name="$1"
    read -p "Enter command to run for $command_name: " command
    echo "Executing command: $command" | tee -a "$log_file"
    echo "=====================================" | tee -a "$log_file"
    eval "$command" | tee -a "$log_file"
    echo "=====================================" | tee -a "$log_file"
    read -p "Press Enter to continue..."
}

# Main script logic
while true; do
    show_menu
    handle_input
done
