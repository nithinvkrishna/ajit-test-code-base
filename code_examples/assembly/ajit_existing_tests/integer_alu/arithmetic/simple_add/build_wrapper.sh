#!/bin/bash

# Check if Python 3 is available
if ! command -v python3 &> /dev/null; then
    echo "Python 3 not found. You need python to run this script! Trying to install..."

    # Check for package managers
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt install -y python3
    elif command -v yum &> /dev/null; then
        sudo yum install -y python3
    else
        echo "No known package manager found. Please install Python manually."
        exit 1
    fi
fi

# Call the Python script
python3 build_wrapper.py "$@"

