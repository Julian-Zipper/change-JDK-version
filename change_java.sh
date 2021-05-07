#!/bin/bash

# Check if your dumdum self forgot to pass a java version as argument
if [ $# -eq 0 ]
then
	echo "No Java version provided. Please pass an argument (F.E. change_java 11)";
	exit 1;
fi

# Third party script used to run .bat scripts with admin privileges
elevate = /d/projects/scripts/elevate.bat;

# If the java version is valid (an installed JDK):
# - use a script to open an elevated powershell prompt to modify env variables
# - call the corresponding batch script to update the Java env variables
case $1 in
	11 )
		echo "Updating JAVA_HOME and PATH to jdk-$1";
		$elevate ./jdk-11.bat;
		;;
	16 )
		echo "Updating JAVA_HOME and PATH to jdk-$1";
		$elevate ./jdk-16.bat;
		;;
	* )
		echo "Not a valid Java version. Installed jdks are (11, 16)";
		exit 1;
		;;
esac

# Closing statement
echo "Succesfuly switched to jdk-$1";
echo "Closing...";
