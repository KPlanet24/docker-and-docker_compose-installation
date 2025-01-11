Automatic Installation Script for Docker and Docker Compose

This script automates the process of installing Docker and Docker Compose on an Ubuntu system. It follows a structured step-by-step approach, ensuring all dependencies and configurations are properly handled.

Steps in the Script:
Update the Package Index:

The script starts by updating the package index to ensure all repositories are up-to-date.
Install Required Dependencies:

Installs essential tools like curl, ca-certificates, and software-properties-common.
Add Docker's GPG Key:

Downloads and adds Docker's official GPG key to ensure the authenticity of the Docker packages.
Set Up the Docker Repository:

Adds Docker's stable repository to the system's package manager.
Update the Package Index Again:

Updates the package index to include Docker's repository.
Install Docker Engine:

Installs Docker Engine, CLI, and containerd.io.
Verify Docker Installation:

Confirms that Docker is installed correctly by checking its version.
Optional: Configure Non-Root User Access:

Adds the current user to the Docker group to enable running Docker commands without sudo.
Enable and Start Docker Service:

Configures Docker to start automatically on system boot and starts the service.
Install Docker Compose:

Downloads the latest version of Docker Compose from GitHub and makes it executable.
Verify Docker Compose Installation:

Checks the installed Docker Compose version to confirm successful installation.
Final Step:

Informs the user to log out and back in to apply group changes for non-root Docker access.
