#!/bin/sh
# Server Launch Script
#
# Thrown together by Neeve in under five minutes, Public Domain
# https://github.com/Neeve01
#
# Added java version check by t0suj4, Public Domain
# https://github.com/t0su4
#
# Adapted from Nomifactory by WaitingIdly, adding configurable java version and instructions
# https://github.com/Nomifactory/Nomifactory/blob/f05d2f552ca8441c3f26fff76e16392c74f12337/launchscripts/launch.bat
#

# DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING
FORGE_JAR='forge-1.12.2-14.23.5.2860.jar'

# these you can edit
# this must point to Java 1.8, edit it to point directly to a valid java version if it does not.
# if you get a `launcher.java.lang.reflect.InvocationTargetException`, change this
JAVA_VERSION='java'
# a good rule of thumb is 2gb+1gb per concurrent player.
MIN_RAM='4096M'
MAX_RAM='4096M'
JAVA_PARAMETERS=''

# DO NOT EDIT ANYTHING PAST THIS LINE
LAUNCHPARAMS="-server -Xms$MIN_RAM -Xmx$MAX_RAM $JAVA_PARAMETERS -jar $FORGE_JAR nogui"

echo "Checking java version..."
echo
$JAVA_VERSION -version
echo
echo "The expected java version is 1.8. Not higher, not lower."
echo

echo "Launching the server..."
echo
echo "> $JAVA_VERSION $LAUNCHPARAMS"
echo
$JAVA_VERSION $LAUNCHPARAMS

echo
echo "- The server has stopped. If it's a crash, please read the output above."
echo
read -p "- Press Return to exit..." _
