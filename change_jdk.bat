@echo off

:: next line calls this script, but with admin elevation
:: to check if the script has admin elevation, an "am_admin" parameter will be passed
if not "%1"=="am_admin" (powershell start -verb runas '%0' 'am_admin "%*"' & exit)

:: parameters will look like "am_admin <folderpath>" right now. So, concatenate
:: all parameters with %*, and substract the "am_admin " part to get the folder path
set jdk_folder=%*
set jdk_folder=%jdk_folder:am_admin =%

setx -m JAVA_HOME "%jdk_folder%"