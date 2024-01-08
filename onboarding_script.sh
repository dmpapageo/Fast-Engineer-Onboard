#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Check if Homebrew installation was successful
if [ $? -eq 0 ]; then
    echo "Homebrew installed successfully."
else
    echo "Failed to install Homebrew."
    exit 1
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Function to install an application and check its installation status
install_and_check() {
    brew install --cask $1
    if [ $? -eq 0 ]; then
        echo "$1 installed successfully."
    else
        echo "Issue encountered while installing $1."
    fi
}

# Install onboarding applications. Replace with any required across members of a given team
install_and_check slack
install_and_check visual-studio-code
install_and_check google-chrome
install_and_check docker
install_and_check gpg-suite
install_and_check mongodb-community

echo "Installation complete!"
