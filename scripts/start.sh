#!/bin/bash

# Check Node.js version
REQUIRED_NODE_VERSION=22
CURRENT_NODE_VERSION=$(node -v | cut -d '.' -f1 | tr -d 'v')

# Node.js version validation
if [[ "$CURRENT_NODE_VERSION" -lt "$REQUIRED_NODE_VERSION" ]]; then
    echo -e "\033[1;31mError: You need Node.js version $REQUIRED_NODE_VERSION or higher. Current version: $CURRENT_NODE_VERSION.\033[0m"
    exit 1
fi

# Validate if pnpm is installed
if ! command -v pnpm &> /dev/null; then
    echo -e "\033[1;31mError: pnpm is not installed. Please install it before proceeding.\033[0m"
    exit 1
fi

# Set project root
PROJECT_ROOT="$(dirname "$0")/.."
cd "$PROJECT_ROOT" || { echo "Failed to navigate to project root"; exit 1; }

# Clean pnpm cache
echo -e "\033[1mCleaning pnpm cache...\033[0m"
pnpm clean || { echo -e "\033[1;31mCache cleaning failed.\033[0m"; exit 1; }

# Install dependencies
echo -e "\033[1mInstalling dependencies...\033[0m"
pnpm install || { echo -e "\033[1;31mDependency installation failed.\033[0m"; exit 1; }

# Build the project
echo -e "\033[1mBuilding the project...\033[0m"
pnpm build || { echo -e "\033[1;31mBuild failed.\033[0m"; exit 1; }

# Launch the project
echo -e "\033[1mStarting the project...\033[0m"
pnpm start || { echo -e "\033[1;31mProject startup failed.\033[0m"; exit 1; }

# Launch client
echo -e "\033[1mStarting client...\033[0m"
pnpm start:client || { echo -e "\033[1;31mClient startup failed.\033[0m"; exit 1; }

# Open webpage
echo -e "\033[1mOpening the webpage at http://localhost:5173...\033[0m"
if command -v xdg-open &> /dev/null; then
    xdg-open "http://localhost:5173"
elif command -v open &> /dev/null; then
    open "http://localhost:5173"
else
    echo -e "\033[1;33mPlease manually open http://localhost:5173 in your browser.\033[0m"
fi
