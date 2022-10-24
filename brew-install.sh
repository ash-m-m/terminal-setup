#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/ash/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ash/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install iterm2
brew install gh
brew install wget
