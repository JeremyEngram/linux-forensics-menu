#!/bin/bash

# Function to handle Social Media Forensics
socialMediaForensics() {
    echo "You selected Social Media Forensics"
    # Add your code for Social Media Forensics here
}

# Function to handle Web Forensics
webForensics() {
    echo "You selected Web Forensics"
    # Add your code for Web Forensics here
}

# Function to handle Email Forensics
emailForensics() {
    echo "You selected Email Forensics"
    # Add your code for Email Forensics here
}

# Function to handle Geolocation Forensics
geolocationForensics() {
    echo "You selected Geolocation Forensics"
    # Add your code for Geolocation Forensics here
}

# Function to handle Image and Video Forensics
imageVideoForensics() {
    echo "You selected Image and Video Forensics"
    # Add your code for Image and Video Forensics here
}

# Function to handle Financial Forensics
financialForensics() {
    echo "You selected Financial Forensics"
    # Add your code for Financial Forensics here
}

# Function to handle Dark Web Forensics
darkWebForensics() {
    echo "You selected Dark Web Forensics"
    # Add your code for Dark Web Forensics here
}

# Function to handle Public Records Forensics
publicRecordsForensics() {
    echo "You selected Public Records Forensics"
    # Add your code for Public Records Forensics here
}

# Display the menu
echo "Welcome to the Bash Shell Menu"
echo "=============================="

# Loop until the user selects the Quit option
while true; do
    # Print menu options
    echo "Please select an option:"
    select opt in "Social Media Forensics" "Web Forensics" "Email Forensics" "Geolocation Forensics" "Image and Video Forensics" "Financial Forensics" "Dark Web Forensics" "Public Records Forensics" "Quit"; do
        case $REPLY in
            1) socialMediaForensics ;;
            2) webForensics ;;
            3) emailForensics ;;
            4) geolocationForensics ;;
            5) imageVideoForensics ;;
            6) financialForensics ;;
            7) darkWebForensics ;;
            8) publicRecordsForensics ;;
            9) echo "Exiting..."; exit ;;
            *) echo "Invalid option. Please select again." ;;
        esac
        break
    done
done
