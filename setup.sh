#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL 
https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Git
brew install git

# Set up Git (You'll need to manually enter your GitHub credentials)
echo "Configuring Git..."
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
echo "Please enter your GitHub credentials:"
git credential-osxkeychain

# Install Tabby terminal
brew install --cask tabby

# Install Fish shell
brew install fish
# Ensure fish is in the list of acceptable shells
grep -q "^/usr/local/bin/fish$" /etc/shells || echo "/usr/local/bin/fish" | sudo tee -a 
/etc/shells

# Set fish as the default shell
chsh -s /usr/local/bin/fish

# Install Java 1.8 and 11
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk8
brew install adoptopenjdk11

# Install jenv for easy java version management
brew install jenv

# Add to fish profile for jenv
echo 'set -x PATH $HOME/.jenv/bin $PATH' >> ~/.config/fish/config.fish

# Initialize jenv
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/

# Install Node and npm
brew install node

# Install Maven
brew install maven

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install Docker
brew install --cask docker

# Print completion
echo "Setup complete!"

