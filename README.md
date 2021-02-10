# aur314 (AUR Packages Installer)

A simple *Bash* script designed to install *[AUR](https://aur.archlinux.org/)* packages inside the *[Arch Linux](https://www.archlinux.org/)* OS.

## Installation

Clone the *aur314* repository to the local machine and go to its directory.

> \$ git clone <https://github.com/devourerOfBits80/aur314.git>  
> \$ cd aur314

## Usage

The *aur314.sh* script can be only executed directly from a user account, without root privileges. User will be prompted to enter the root password in due course, during the package(s) installation.

By default the script downloads package(s) to the */tmp/.aur314* directory. However, if you want to change the working directory permanently, you can declare the *AUR_BUILD_DIR* environment variable with a value of the expected path.

To install an *AUR* package in the easiest way (eg. *yay*, the well-known *pacman* wrapper and *AUR* helper), use the command:

> \$ ./aur314.sh yay

There is also a possibility to install a few packages at once (eg. *yay*, *Google Chrome* and *Skype*):

> \$ ./aur314.sh yay google-chrome skypeforlinux-stable-bin

Finally, if you need to change the working directory for single script execution (probably a very rare case), you can declare the *AUR_BUILD_DIR* variable inline:

> \$ AUR_BUILD_DIR=/path/to/work/dir ./aur314.sh yay
