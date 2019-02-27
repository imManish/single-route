#!/bin/bash

WHOIAM=$(whoami)
WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."

#if [ "$(id -u)" != "0" ]; then
#    echo "Please run this script as root!"
#    exit 1
#fi

APACHEGRP=''
if id -u www-data > /dev/null 2>&1; then
    APACHEGRP='www-data'
elif id -u _www > /dev/null 2>&1; then
    APACHEGRP='_www'
else
    echo "Unable to determine Apache group!"
fi
echo "Changing ownerships to $WHOIAM:$APACHEGRP"
sudo chown -R $WHOIAM:$APACHEGRP $WORKING_DIR/*

# Update globally to 754
echo "Updating default file and folder permissions..."
chmod -R 754 $WORKING_DIR

# Make specific folders writeable
echo "Making storage/ writeable"
chmod -R 777 $WORKING_DIR/storage
echo "Making public/assets/ writeable"
chmod -R 777 $WORKING_DIR/public/assets
echo "Done..."
