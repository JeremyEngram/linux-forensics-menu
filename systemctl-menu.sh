#!/bin/bash

# Function to display the main menu
function show_menu() {
  clear
  echo "==== Systemctl Menu ===="
  echo "1. Start a service"
  echo "2. Stop a service"
  echo "3. Restart a service"
  echo "4. Enable a service"
  echo "5. Disable a service"
  echo "6. Check service status"
  echo "0. Exit"
  echo "========================"
}

# Function to start a service
function start_service() {
  read -p "Enter the service name: " service
  sudo systemctl start "$service"
  echo "Service '$service' started."
  read -p "Press Enter to continue..."
}

# Function to stop a service
function stop_service() {
  read -p "Enter the service name: " service
  sudo systemctl stop "$service"
  echo "Service '$service' stopped."
  read -p "Press Enter to continue..."
}

# Function to restart a service
function restart_service() {
  read -p "Enter the service name: " service
  sudo systemctl restart "$service"
  echo "Service '$service' restarted."
  read -p "Press Enter to continue..."
}

# Function to enable a service
function enable_service() {
  read -p "Enter the service name: " service
  sudo systemctl enable "$service"
  echo "Service '$service' enabled."
  read -p "Press Enter to continue..."
}

# Function to disable a service
function disable_service() {
  read -p "Enter the service name: " service
  sudo systemctl disable "$service"
  echo "Service '$service' disabled."
  read -p "Press Enter to continue..."
}

# Function to check service status
function check_status() {
  read -p "Enter the service name: " service
  sudo systemctl status "$service"
  read -p "Press Enter to continue..."
}

# Main menu loop
while true; do
  show_menu
  read -p "Enter your choice: " choice
  case "$choice" in
    1) start_service;;
    2) stop_service;;
    3) restart_service;;
    4) enable_service;;
    5) disable_service;;
    6) check_status;;
    0) echo "Exiting..."; break;;
    *) echo "Invalid option. Please try again.";;
  esac
done
