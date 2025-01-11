### Automatic Installation Script for Docker and Docker Compose

This script automates the process of installing Docker and Docker Compose on an Ubuntu system. It follows a structured step-by-step approach, ensuring all dependencies and configurations are properly handled.

#### Steps in the Script:

1. **Update the Package Index**:
   - The script starts by updating the package index to ensure all repositories are up-to-date.

2. **Install Required Dependencies**:
   - Installs essential tools like `curl`, `ca-certificates`, and `software-properties-common`.

3. **Add Docker's GPG Key**:
   - Downloads and adds Docker's official GPG key to ensure the authenticity of the Docker packages.

4. **Set Up the Docker Repository**:
   - Adds Docker's stable repository to the system's package manager.

5. **Update the Package Index Again**:
   - Updates the package index to include Docker's repository.

6. **Install Docker Engine**:
   - Installs Docker Engine, CLI, and `containerd.io`.

7. **Verify Docker Installation**:
   - Confirms that Docker is installed correctly by checking its version.

8. **Optional: Configure Non-Root User Access**:
   - Adds the current user to the Docker group to enable running Docker commands without `sudo`.

9. **Enable and Start Docker Service**:
   - Configures Docker to start automatically on system boot and starts the service.

10. **Install Docker Compose**:
    - Downloads the latest version of Docker Compose from GitHub and makes it executable.

11. **Verify Docker Compose Installation**:
    - Checks the installed Docker Compose version to confirm successful installation.

12. **Final Step**:
    - Informs the user to log out and back in to apply group changes for non-root Docker access.

---

This script simplifies the manual installation process by automating each step and providing logs for transparency. After executing the script, both Docker and Docker Compose will be ready for use. If needed, the user can edit the script to tailor it to specific Ubuntu versions or configurations.
