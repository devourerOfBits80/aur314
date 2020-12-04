#!/bin/bash
# A Bash script designed to install AUR packages

AURPI_WORK_DIR=${AUR_BUILD_DIR:-"/tmp/.aur314"}

# Create the aur314 working directory if it does not exist
if [ ! -d "$AURPI_WORK_DIR" ]; then
    mkdir -p "$AURPI_WORK_DIR"
fi

# Install AUR packages
for PACKAGE in ${@##-*}; do
    # Go to the working directory
    cd "$AURPI_WORK_DIR"

    # Download and unpack the package
    curl -L -O "https://aur.archlinux.org/cgit/aur.git/snapshot/$PACKAGE.tar.gz"
    tar -xvf "$PACKAGE.tar.gz"

    # Go to the package directory and build it
    cd "$PACKAGE"
    makepkg -sri --needed --noconfirm --noprogressbar
done
