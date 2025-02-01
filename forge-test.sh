#!/bin/bash

# Check if the --fork-url parameter is provided
if [ -z "$1" ]; then
  echo "Error: --fork-url parameter is missing."
  echo "Usage: ./forge-test.sh --fork-url https://sepolia.infura.io/v3/YOURKEY"
  exit 1
fi

# Extract the fork URL from the parameter
FORK_URL=$1

# Run the forge test command with the provided URL
forge test --fork-url $FORK_URL

# Output success message
echo "Forge test task completed successfully."
