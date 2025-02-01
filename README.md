This repository is empty. Any task executed on it should be considered a new capability and needs to be created.

## Purpose of the Repository

This repository is intended to provide a starting point for new projects. It is currently empty, and any task executed on it should be considered a new capability and needs to be created.

## Forge Install Task

The "forge install" task is a new capability that needs to be created. It involves setting up the necessary environment and dependencies for the project.

## Instructions for Using the Forge Install Script

1. Clone the repository to your local machine.
2. Navigate to the repository directory.
3. Run the `forge-install.sh` script to set up the environment and dependencies.

```sh
./forge-install.sh
```

## Forge Test Task

The "forge test" task is a new capability that needs to be created. It involves running tests on the project using the `forge test` command with the `--fork-url` parameter.

## Instructions for Using the Forge Test Command

1. Clone the repository to your local machine.
2. Navigate to the repository directory.
3. Run the `forge-test.sh` script to execute the tests with the `--fork-url` parameter.

```sh
./forge-test.sh --fork-url https://sepolia.infura.io/v3/YOURKEY
```

## Making Scripts Executable

To make the `forge-install.sh` and `forge-test.sh` scripts executable, follow these steps:

1. Open a terminal and navigate to the root directory of the repository where the `forge-install.sh` and `forge-test.sh` files are located.
2. Run the following commands to change the file permissions and make the scripts executable:

```sh
chmod +x forge-install.sh
chmod +x forge-test.sh
```

3. Verify that the scripts are now executable by listing the file details:

```sh
ls -l forge-install.sh
ls -l forge-test.sh
```

The output should show that the files have executable permissions (e.g., `-rwxr-xr-x`).

## Verifying the Installation of foundry-rs/forge-std

To verify the installation of `foundry-rs/forge-std`, follow these steps:

1. Ensure you have run the `forge-install.sh` script located in the root directory of the repository.
2. Check the output of the `forge-install.sh` script for a success message: "Forge install task completed successfully."
3. Verify that the `foundry-rs/forge-std` package is installed by checking the project directory for the presence of the `forge-std` package. This can be done by listing the contents of the project directory and looking for the `forge-std` package.

## Automating the Execution of forge-test.sh

To automate the execution of `forge-test.sh`, you can use the `test` task defined in the `.devcontainer/devcontainer.json` file. Follow these steps:

1. Ensure the `forge-test.sh` script is executable by running `chmod +x forge-test.sh`.
2. Use the `test` task to automate the execution of the `forge-test.sh` script with the `--fork-url` parameter.

```sh
devcontainer task test
```

This will run the `forge-test.sh` script with the `--fork-url` parameter and automate the execution of the tests.
