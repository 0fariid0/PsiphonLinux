#!/bin/bash

# Define the URL and path for the Psiphon manager script
SCRIPT_URL="https://raw.githubusercontent.com/0fariid0/PsiphonLinux/main/psiphon_manager.sh"
SCRIPT_PATH="/usr/local/bin/psiphon_manager.sh"

# Download the Psiphon manager script
echo "Downloading the Psiphon manager script..."
wget -q $SCRIPT_URL -O $SCRIPT_PATH
if [ $? -ne 0 ]; then
  echo "Failed to download Psiphon manager script."
  exit 1
fi

# Make the script executable
echo "Setting executable permissions..."
chmod +x $SCRIPT_PATH
if [ $? -ne 0 ]; then
  echo "Failed to set executable permissions."
  exit 1
fi

# Execute the Psiphon manager script
echo "Executing the Psiphon manager script..."
sudo $SCRIPT_PATH
if [ $? -ne 0 ]; then
  echo "Failed to execute Psiphon manager script."
  exit 1
fi

# Inform the user
echo "The Psiphon manager script has been executed successfully."
