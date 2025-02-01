# Forge Test Repository

This repository contains scripts and instructions for running tests on a project using the `forge test` command with the `--fork-url` parameter.

## Purpose

The purpose of this repository is to provide a setup for running tests on a project using the `forge test` command with a specified Ethereum node URL. This allows for testing in an environment that mimics the state of the specified Ethereum network.

## Install Dependencies

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

## Verify Installation

To verify the installation of `foundry-rs/forge-std`, follow these steps:

1. Ensure you have run the `forge-install.sh` script located in the root directory of the repository.
2. Check the output of the `forge-install.sh` script for a success message: "Forge install task completed successfully."
3. Verify that the `foundry-rs/forge-std` package is installed by checking the project directory for the presence of the `forge-std` package. This can be done by listing the contents of the project directory and looking for the `forge-std` package.

## Add Tests

To add tests to the repository, follow these steps:

1. Create a new directory named `tests` in the root directory of the repository.
2. Add your test files to the `tests` directory. These files should contain the test cases for your project.
3. Ensure that the test files are written in a format compatible with the `forge test` command.
4. Update the `forge-test.sh` script to include the path to the `tests` directory if necessary.

## Automate Test Execution

To automate the execution of `forge-test.sh`, you can use the `test` task defined in the `.devcontainer/devcontainer.json` file. Follow these steps:

1. Ensure the `forge-test.sh` script is executable by running `chmod +x forge-test.sh`.
2. Run the following command to execute the `test` task:

    ```sh
    devcontainer task test
    ```

This will run the `forge-test.sh` script with the `--fork-url` parameter and automate the execution of the tests.

## Usage

To use the `forge test` command, follow these steps:

1. Ensure you have cloned the repository to your local machine.
2. Navigate to the repository directory.
3. Run the `forge-test.sh` script with the `--fork-url` parameter:

    ```sh
    ./forge-test.sh --fork-url https://sepolia.infura.io/v3/YOURKEY
    ```

The `forge-test.sh` script is responsible for running tests on the project using the `forge test` command with the `--fork-url` parameter. The script checks if the `--fork-url` parameter is provided and then executes the `forge test` command with the provided URL. If the `--fork-url` parameter is missing, the script will output an error message and usage instructions.
