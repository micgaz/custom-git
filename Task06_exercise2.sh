#!/bin/bash

# Ensure the script is run with superuser privileges
if [[ "${UID}" -ne 0 ]]; then
    echo 'Please run the script using sudo or as a root.'
    exit 1 # Exit with an error
fi