#!/bin/bash
set -e
 
# If "-e uid={custom/local user id}" flag is not set for "docker run" command, use 1000 as default
CURRENT_UID=${uid:-1000}
 
# Notify user about the UID selected
echo "Current UID : $CURRENT_UID"
# Create user called "mortal" with selected UID
useradd -d /home/mortal --shell /bin/bash -u $CURRENT_UID -o -c "" -m mortal
passwd -d mortal
# Set "HOME" ENV variable for user's home directory
export HOME=/home/mortal
echo "mortal  ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers; echo "Defaults    !requiretty" >> /etc/sudoers
 
# Execute process
exec /usr/local/bin/gosu mortal "$@"
