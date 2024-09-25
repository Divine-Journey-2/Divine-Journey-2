:: Server Auto Launch Script
::
:: Created by WaitingIdly for Divine Journey 2, licensed as GPLv3
:: https://github.com/Divine-Journey-2/Divine-Journey-2/blob/main/serverfiles/autolaunch.sh
::
:: Automatically attempts to launch the server whenever the server has crashed.

:: DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING (and take full responsibility)
@ECHO OFF
SET FILE=launch_config.ini


:: Load variables from the config file
for /f "delims== tokens=1,*" %%G in (%FILE%) do (
    set %%G=%%H
)

echo Checking java version...
echo.
%JAVA_VERSION% -version
echo.
echo The expected java version is 1.8. Not higher, not lower.
echo.
echo To change the values used, edit the launch_config.ini file.
echo.
timeout /t 3

echo.
echo Starting autorelaunch process.
echo.
:loop
%JAVA_VERSION% -server -Xms%MIN_RAM% -Xmx%MAX_RAM% %JAVA_PARAMETERS% -jar %FORGE_JAR% nogui

echo.
echo Server process finished. The server will restart in 5 seconds. Press CTRL+C to cancel.
timeout /t 5
goto :server_loop
