echo off
REM ## Add the wireless name to the command line argument
set network=%1

IF [%network%]==[] GOTO BLANK 

GOTO PROPERTIES

:PROPERTIES

netsh wlan show profile "%network%" key=clear

GOTO DONE

:BLANK

echo Please add the network name as a parameter.

GOTO DONE

:DONE

echo Done!