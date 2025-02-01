# Forge Test Repository

This repository contains scripts to handle the "forge install" and "forge test" tasks. The repository is empty initially, and any task executed on it should be considered a new capability and needs to be created.

## Purpose

The purpose of this repository is to provide a setup for running tests on a project using the `forge test` command with the `--fork-url` parameter. The repository includes scripts to install necessary dependencies and run tests.

## Instructions

### 1. Install Dependencies

To install the necessary dependencies for the project, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the root directory of the repository.
3. Make the `forge-install.sh` script executable by running the following command:

    ```sh
    chmod +x forge-install.sh
    ```

4. Run the `forge-install.sh` script to set up the environment and install the dependencies:

    ```sh
    ./forge-install.sh
    ```

### 2. Run Tests

To run tests on the project using the `forge test` command with the `--fork-url` parameter, follow these steps:

1. Ensure you have cloned the repository to your local machine.
2. Navigate to the root directory of the repository.
3. Make the `forge-test.sh` script executable by running the following command:

    ```sh
    chmod +x forge-test.sh
    ```

4. Run the `forge-test.sh` script with the `--fork-url` parameter:

    ```sh
    ./forge-test.sh --fork-url https://sepolia.infura.io/v3/YOURKEY
    ```

### 3. Verify Installation

To verify the installation of `foundry-rs/forge-std`, follow these steps:

1. Ensure you have run the `forge-install.sh` script.
2. Check the output of the `forge-install.sh` script for a success message: "Forge install task completed successfully."
3. Verify that the `foundry-rs/forge-std` package is installed by checking the project directory for the presence of the `forge-std` package.

### 4. Automate Test Execution

To automate the execution of `forge-test.sh`, you can use the `test` task defined in the `.devcontainer/devcontainer.json` file. Follow these steps:

1. Ensure the `forge-test.sh` script is executable by running `chmod +x forge-test.sh`.
2. Run the following command to execute the `test` task:

    ```sh
    devcontainer task test
    ```

This will run the `forge-test.sh` script with the `--fork-url` parameter and automate the execution of the tests.
