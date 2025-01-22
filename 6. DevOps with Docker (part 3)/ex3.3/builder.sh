#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Function to print usage instructions
usage() {
  echo "Usage: $0 <github-repo> <docker-hub-repo>"
  echo "Example: $0 mluukkai/express_app mluukkai/testing"
  exit 1
}

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
  usage
fi

# Parse arguments
GITHUB_REPO=$1
DOCKER_HUB_REPO=$2

# Extract repository name from GitHub repository string
REPO_NAME=$(basename "$GITHUB_REPO")

# Clone the GitHub repository
if [ -d "$REPO_NAME" ]; then
  echo "Removing existing directory $REPO_NAME"
  rm -rf "$REPO_NAME"
fi

echo "Cloning repository https://github.com/$GITHUB_REPO.git"
git clone "https://github.com/$GITHUB_REPO.git"

# Navigate to the repository directory
cd "$REPO_NAME"

# Build the Docker image
echo "Building Docker image $DOCKER_HUB_REPO"
docker build -t "$DOCKER_HUB_REPO" .

# Push the Docker image to Docker Hub
echo "Pushing Docker image to $DOCKER_HUB_REPO"
docker push "$DOCKER_HUB_REPO"

# Cleanup: Return to the original directory and remove the cloned repository
cd ..
rm -rf "$REPO_NAME"

echo "Done. Docker image $DOCKER_HUB_REPO has been published."