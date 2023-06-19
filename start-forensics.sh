#!/bin/bash

# Function to handle basic-linux-forensics-menu.sh
basicLinuxForensicsMenu() {
    echo "You selected basic-linux-forensics-menu.sh"
    bash basic-linux-forensics-menu.sh
}

# Function to handle forensics-full-system-gui-install
forensicsFullSystemGuiInstall() {
    echo "You selected forensics-full-system-gui-install"
    bash forensics-full-system-gui-install
}

# Function to handle journalctl-menu.sh
journalctlMenu() {
    echo "You selected journalctl-menu.sh"
    bash journalctl-menu.sh
}

# Function to handle osint-menu-full.sh
osintMenuFull() {
    echo "You selected osint-menu-full.sh"
    bash osint-menu-full.sh
}

# Function to handle spool-sync-remote-image.sh
spoolSyncRemoteImage() {
    echo "You selected spool-sync-remote-image.sh"
    bash spool-sync-remote-image.sh
}

# Function to handle systemctl-menu.sh
systemctlMenu() {
    echo "You selected systemctl-menu.sh"
    bash systemctl-menu.sh
}

# Display the menu
echo "Welcome to the Bash Shell Menu"
echo "=============================="

# Loop until the user selects the Quit option
while true; do
    # Print menu options
    echo "Please select an option:"
    select opt in "basic-linux-forensics-menu.sh" "forensics-full-system-gui-install" "journalctl-menu.sh" "osint-menu-full.sh" "spool-sync-remote-image.sh" "systemctl-menu.sh" "Quit"; do
        case $REPLY in
            1) basicLinuxForensicsMenu ;;
            2) forensicsFullSystemGuiInstall ;;
            3) journalctlMenu ;;
            4) osintMenuFull ;;
            5) spoolSyncRemoteImage ;;
            6) systemctlMenu ;;
            7) echo "Exiting..."; exit ;;
            *) echo "Invalid option. Please select again." ;;
        esac
        break
    done
done
