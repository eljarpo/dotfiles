#!/bin/bash

# Read package names from .brew_packages
PACKAGES=$(cat .brew_packages)

# Loop through each package and install
for package in $PACKAGES; do
  brew install $package
done

echo "Brew package installation complete!"