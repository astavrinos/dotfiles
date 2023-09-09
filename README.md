
# Dotfiles Setup

This dotfiles repository provides a simple and efficient way to set up a macOS 
development environment. When you run the setup script, it installs and configures the 
following tools:

1. Homebrew: The missing package manager for macOS.
2. Git: Distributed version control system. The script also assists in setting up your 
GitHub credentials for easier repository management.
3. Tabby Terminal: A modern terminal app with a range of features.
4. Fish Shell: A user-friendly shell with enhanced features like autosuggestions and 
scripting capabilities.
5. Java (1.8 and 11): Two versions of the Java SDK, useful for different projects and 
compatibility needs.
6. jenv: A version management tool for Java, allowing easy switching between different 
Java versions.
7. Node and npm: JavaScript runtime and its package manager.
8. Maven: A software project management and comprehension tool.
9. Visual Studio Code: A powerful source-code editor.
10. Docker: A platform to develop, ship, and run applications inside containers.

## How to run the Setup

1. Clone the Repository
```
git clone https://github.com/astavrinos/dotfiles.git
cd dotfiles
```
2. Make the Script Executable:
```
chmod +x setup.sh
```
3. Execute the Setup Script:
```
./setup.sh
```
4. Verification:
```
java -version
node -v
fish --version
```
