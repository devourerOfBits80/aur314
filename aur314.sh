#!/bin/bash

case $1 in
    help)
        echo "
aur314.sh: simple script designed to install AUR packages inside the Arch Linux
           OS (it can be only executed directly from a user account, without
           root privileges)

Usage:
    ./aur314.sh {aur-pkg1} {aur-pkg2} {aur-pkg3} ...

Parameters:
    {aur-pkg(N)}    - name of the AUR package to install (eg. yay)
"
    exit ;;
esac

AURPI_WORK_DIR=${AUR_BUILD_DIR:-"/tmp/.aur314"}

# Create the aur314.sh working directory
if [ ! -d "$AURPI_WORK_DIR" ]; then
    mkdir -p "$AURPI_WORK_DIR"
fi

# Install AUR package(s)
for PACKAGE in ${@##-*}; do
    # Go to the working directory
    cd "$AURPI_WORK_DIR"

    # Download and unpack the package snapshot
    curl -L -O "https://aur.archlinux.org/cgit/aur.git/snapshot/$PACKAGE.tar.gz"
    tar -xvf "$PACKAGE.tar.gz"

    # Go to the package directory, build it and install
    cd "$PACKAGE"
    makepkg -sri --needed --noconfirm --noprogressbar
done
