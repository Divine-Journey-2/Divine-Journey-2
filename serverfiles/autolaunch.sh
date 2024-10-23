#!/bin/bash
# Server Auto Launch Script
#
# Created by WaitingIdly for Divine Journey 2, licensed as GPLv3
# https://github.com/Divine-Journey-2/Divine-Journey-2/blob/main/serverfiles/autolaunch.bat
#
# Automatically attempts to launch the server whenever the server has crashed.

# DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING (and take full responsibility)
FILE='launch_config.ini'

IFS=$'\n'
# Load variables from the config file
while read -r INPUT; do
    declare ${INPUT//\"} # Strip the double-quote " character from the variable
done < $FILE
IFS=' '
echo "Checking java version..."
echo
$JAVA_VERSION -version
echo
echo "The expected java version is 1.8. Not higher, not lower."
echo
echo "To change the values used, edit the launch_config.ini file."
echo
sleep 3

echo
echo "Starting autorelaunch process."
echo
while true; do
    $JAVA_VERSION -server -Xms$MIN_RAM -Xmx$MAX_RAM $JAVA_PARAMETERS -jar $FORGE_JAR nogui

    echo
    echo "Server process finished. The server will restart in 5 seconds. Press CTRL+C to cancel."
    sleep 5
done
