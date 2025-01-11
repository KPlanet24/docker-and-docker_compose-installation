# Instructions for Installing Docker on Ubuntu

## Step 1: Update the Package Index

Update the package index to ensure you have the latest information on the available packages.

```bash
sudo apt-get update
```

## Step 2: Install Required Dependencies

Install packages to allow `apt` to use repositories over HTTPS.

```bash
sudo apt-get install -y \ 
    ca-certificates \ 
    curl \ 
    software-properties-common
```

## Step 3: Add Docker's Official GPG Key

Download and add Docker's official GPG key to verify downloads.

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

## Step 4: Set Up the Stable Repository

Add Docker's stable repository to your `apt` sources. Replace `$(lsb_release -cs)` with your Ubuntu codename (e.g., `focal` for 20.04 or `jammy` for 22.04).

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

## Step 5: Update the Package Index Again

Update the package index with Docker's packages included.

```bash
sudo apt-get update
```

## Step 6: Install Docker Engine

Install Docker Engine and CLI.

```bash
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```

## Step 7: Verify Docker Installation

Check if Docker is installed correctly by running the following command:

```bash
sudo docker --version
```

## Step 8: (Optional) Manage Docker as a Non-Root User

1. Create a Docker group:
   ```bash
   sudo groupadd docker
   ```
2. Add your user to the Docker group:
   ```bash
   sudo usermod -aG docker $USER
   ```
3. Log out and log back in to apply the group changes, or run:
   ```bash
   newgrp docker
   ```
4. Test Docker without `sudo`:
   ```bash
   docker run hello-world
   ```

## Step 9: Enable and Start Docker Service

Ensure Docker starts on boot and is running:

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

Docker is now installed and ready to use on your Ubuntu system.

# Instructions for Installing Docker Compose

Docker Compose is a tool for defining and running multi-container Docker applications. Follow these steps to install Docker Compose on Ubuntu:

## Step 1: Download the Docker Compose Binary

Download the latest version of Docker Compose from GitHub's release page. Replace `v2.x.x` with the desired version number.

```bash
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

## Step 2: Apply Executable Permissions

Make the downloaded file executable.

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

## Step 3: Verify the Installation

Check if Docker Compose is installed correctly by running:

```bash
docker-compose version
```

## Step 4: (Optional) Create a Symlink for Easier Access

If Docker Compose is not found in your `$PATH`, create a symlink:

```bash
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

Docker Compose is now installed and ready to use on your Ubuntu system.

