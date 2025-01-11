#!/bin/bash

# Function to print messages
log() {
  echo "[INFO] $1"
}

# Step 1: Update the Package Index
log "Updating package index..."
sudo apt-get update

# Step 2: Install Required Dependencies
log "Installing required dependencies..."
sudo apt-get install -y \
    ca-certificates \
    curl \
    software-properties-common

# Step 3: Add Docker's Official GPG Key
log "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Step 4: Set Up the Stable Repository
UBUNTU_CODENAME=$(lsb_release -cs)
log "Setting up the stable repository for Ubuntu $UBUNTU_CODENAME..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $UBUNTU_CODENAME stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Step 5: Update the Package Index Again
log "Updating package index with Docker repository..."
sudo apt-get update

# Step 6: Install Docker Engine
log "Installing Docker Engine and CLI..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Step 7: Verify Docker Installation
log "Verifying Docker installation..."
sudo docker --version

# Step 8: (Optional) Manage Docker as a Non-Root User
log "Configuring Docker to run as non-root user..."
sudo groupadd docker || true
sudo usermod -aG docker $USER

# Step 9: Enable and Start Docker Service
log "Enabling and starting Docker service..."
sudo systemctl enable docker
sudo systemctl start docker

# Step 10: Install Docker Compose
log "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Step 11: Verify Docker Compose Installation
log "Verifying Docker Compose installation..."
docker-compose version

log "Docker and Docker Compose have been successfully installed. Please log out and log back in for changes to take effect."