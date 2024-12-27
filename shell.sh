#!/bin/bash
git clone https://github.com/skaparthi1/GoCD.git

# Define the paths for the JAR files
V1_JAR_PATH="/home/ubuntu/prime-square/HelloWorld-V1.jar"
V2_JAR_PATH="GoCD/HelloWorld.jar"  

# Stop Docker service
echo "Stopping Docker service..."
sudo systemctl stop docker

# Replace V1 JAR with V2 JAR
echo "Replacing $V1_JAR_PATH with $V2_JAR_PATH"
sudo mv $V2_JAR_PATH $V1_JAR_PATH

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

echo "Replacement complete and Docker service restarted."
