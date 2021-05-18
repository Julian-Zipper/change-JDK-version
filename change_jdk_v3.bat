@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' 'am_admin "%*"' & exit)

:: parameters will look like "am_admin <folderpath>" right now. the SHIFT command
:: basically removes the first parameter, and shifts the rest down 1 spot.

set jdk_folder=%*
set jdk_folder=%jdk_folder:am_admin =%

setx -m JAVA_HOME "%jdk_folder%"