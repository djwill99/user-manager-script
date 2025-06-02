#!/bin/bash

LOG_FILE="user_actions.log"

echo "===== User Manager (Simulated) ====="
echo "1. Create User"
echo "2. Delete User"
echo "3. Disable User"
echo "4. Exit"
read -p "Choose an option: " choice

case $choice in
  1)
    read -p "Enter username to create: " username
    echo "$(date) [SIMULATED] Created user: $username" | tee -a $LOG_FILE
    ;;
  2)
    read -p "Enter username to delete: " username
    echo "$(date) [SIMULATED] Deleted user: $username" | tee -a $LOG_FILE
    ;;
  3)
    read -p "Enter username to disable: " username
    echo "$(date) [SIMULATED] Disabled user: $username" | tee -a $LOG_FILE
    ;;
  4)
    echo "Exiting... 👋"
    exit 0
    ;;
  *)
    echo "Invalid option ❌"
    ;;
esac

