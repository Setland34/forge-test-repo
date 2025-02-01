#!/bin/bash

# This script runs tests on the project using the forge test command with the --fork-url parameter.

# Check if the --fork-url parameter is provided
if [ -z "$1" ]; then
  echo "Error: --fork-url parameter is missing."
  echo "Usage: ./forge-test.sh --fork-url https://sepolia.infura.io/v3/YOURKEY"
  exit 1
fi

# Run the forge test command with the provided --fork-url parameter
forge test --fork-url "$1"

echo "Forge test task completed successfully."
