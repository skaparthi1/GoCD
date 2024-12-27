#!/bin/bash
git clone https://github.com/skaparthi1/GoCD.git

# Define the paths for the JAR files
V1_JAR_PATH="/home/ubuntu/prime-square/"
V2_JAR_PATH="GoCD/"  

# Stop Docker service
echo "Stopping Docker service..."
sudo systemctl stop docker

# Removing existing JAR
sudo rm $V1_JAR_PATH/*.jar

# Replace V1 JAR with V2 JAR
echo "Placing $V2_JAR_PATH Jar"
sudo mv $V2_JAR_PATH/HelloWorld.jar $V1_JAR_PATH

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

echo "Replacement complete and Docker service restarted."
