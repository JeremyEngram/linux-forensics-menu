#!/bin/bash

# Function to display the main menu
function show_menu() {
  clear
  echo "==== Journalctl Menu ===="
  echo "1. Show logs for a specific unit"
  echo "2. Show logs for a specific time range"
  echo "3. Show logs with a specific priority level"
  echo "0. Exit"
  echo "========================"
}

# Function to show logs for a specific unit
function show_unit_logs() {
  read -p "Enter the unit name: " unit
  journalctl -u "$unit"
  read -p "Press Enter to continue..."
}

# Function to show logs for a specific time range
function show_time_logs() {
  read -p "Enter the start time (YYYY-MM-DD HH:MM:SS): " start_time
  read -p "Enter the end time (YYYY-MM-DD HH:MM:SS): " end_time
  journalctl --since "$start_time" --until "$end_time"
  read -p "Press Enter to continue..."
}

# Function to show logs with a specific priority level
function show_priority_logs() {
  read -p "Enter the priority level (0-7): " priority
  journalctl -p "$priority"
  read -p "Press Enter to continue..."
}

# Main menu loop
while true; do
  show_menu
  read -p "Enter your choice: " choice
  case "$choice" in
    1) show_unit_logs;;
    2) show_time_logs;;
    3) show_priority_logs;;
    0) echo "Exiting..."; break;;
    *) echo "Invalid option. Please try again.";;
  esac
done
