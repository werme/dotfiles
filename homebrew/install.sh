#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

brew update
brew upgrade

# Install homebrew packages
brew install git grc coreutils spark

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php
brew install php55

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew cask install alfred bettertouchtool cloudapp dropbox f-lux google-chrome iterm2 spotify the-unarchiver u-torrent vlc

brew cleanup

exit 0
