#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists
sudo apt-get update

# Install necessary packages
sudo apt-get install -y build-essential git npm

# Clone the project repository
git clone https://github.com/githubnext/workspace-blank.git

# Navigate to the project directory
cd workspace-blank

# Install project dependencies
npm install

# Install foundry-rs/forge-std
forge install foundry-rs/forge-std

# Output success message
echo "Forge install task completed successfully."
