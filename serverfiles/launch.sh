#!/bin/bash
# Server Launch Script
#
# Thrown together by Neeve in under five minutes, Public Domain
# https://github.com/Neeve01
#
# Added java version check by t0suj4, Public Domain
# https://github.com/t0su4
#
# Adapted from Nomifactory by WaitingIdly, splitting off configs into a configuration file
# https://github.com/Nomifactory/Nomifactory/blob/f05d2f552ca8441c3f26fff76e16392c74f12337/launchscripts/launch.sh
# https://github.com/Divine-Journey-2/Divine-Journey-2/blob/main/serverfiles/launch.sh
#

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

echo "Launching the server..."
echo
echo "> $JAVA_VERSION -server -Xms$MIN_RAM -Xmx$MAX_RAM $JAVA_PARAMETERS -jar $FORGE_JAR nogui"
echo
$JAVA_VERSION -server -Xms$MIN_RAM -Xmx$MAX_RAM $JAVA_PARAMETERS -jar $FORGE_JAR nogui

echo
echo "- The server has stopped. If it's a crash, please read the output above."
echo
read -p "- Press Return to exit..." _
