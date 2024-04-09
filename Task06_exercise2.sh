#!/bin/bash

# Ensure the script is run with superuser privileges
if [[ "${UID}" -ne 0 ]]; then
    echo 'Please run the script using sudo or as a root.'
    exit 1 # Exit with an error
fi
# Prompt for user input
read -p 'Enter the username to create: ' USER_NAME
read -p 'Enter the name of the person or application that will be using this account: ' COMMENT
read -p 'Enter the password to use for the account: ' PASSWORD