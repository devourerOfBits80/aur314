# aur314 (AUR Packages Installer)

A *Bash* script designed to install *[AUR](https://aur.archlinux.org/)* packages inside the *[Arch Linux](https://aur.archlinux.org/)* OS.

## Installation

Clone the *aur314* repository, go to its directory, and make the *aur314.sh* script file executable.

> \$ git clone <https://github.com/devourerOfBits80/aur314.git>  
> \$ cd aur314  
> \$ chmod 0755 aur314.sh

## Usage

This script can only be executed from a user account, without root privileges. The user will be prompted to enter the root password in due course, during the package(s) installation.

By default the *aur314* script downloads package(s) to the */tmp/.aur314* directory. If you want to change the working directory, you can declare the *AUR_BUILD_DIR* environmental variable with the value of the expected path.

To install an *AUR* package in the simplest way (eg. the *yay* package manager installation), use the command:

> \$ sh aur314.sh yay

If you need to change the working directory only for the current script execution, you can declare the *AUR_BUILD_DIR* variable inline:

> \$ env AUR_BUILD_DIR=/path/to/work/dir sh aur314.sh yay

Finally, there is also a possibility to install a few packages at once (eg. *yay*, *Spotify* and *Skype*):

> \$ sh aur314.sh yay spotify skypeforlinux-stable-bin
