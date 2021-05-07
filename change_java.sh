#!/bin/bash

# Check if your dumdum self forgot to pass a java version as argument
if [ $# -eq 0 ]
then
	echo "No Java version provided. Please pass an argument (F.E. change_java 11)";
	exit 1;
fi

elevate = /d/projects/scripts/elevate.bat;

case $1 in
	11 )
		echo "Updating JAVA_HOME and PATH to jdk-$1";
		elevate ./jdk-11.bat;
		;;
	16 )
		echo "Updating JAVA_HOME and PATH to jdk-$1";
		elevate ./jdk-16.bat;
		;;
	* )
		echo "Not a valid Java version. Installed jdks are (11, 16)";
		exit 1;
		;;
esac

echo "Succesfuly switched to jdk-$1";
echo "Closing...";
