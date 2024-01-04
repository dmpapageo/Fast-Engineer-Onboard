#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install onboarding applications. Replace with any required across members of a given team
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask docker
brew install --cask gpg-suite
brew install --cask mongodb-community

echo "Installation complete!"
