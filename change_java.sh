#!/bin/bash

# Check if your dumdum self forgot to pass a java version as argument
if [ $# -eq 0 ]
then
	echo "No Java version provided. Please pass an argument (F.E. change_java 11)";
	exit 1;
fi

# define a fuction to call the powershell script used to change JDK in registry
# Requires an argument - the path to the JDK installation folder
set_jdk_to () {
	./change_jdk.bat $1

	echo "Batch script finished updating JAVA_HOME and PATH";
	echo "Succesfuly switched JDK to $1";
}

# If the java version is valid (an installed JDK):
# - use a script to open an elevated powershell prompt to modify env variables
# - call the corresponding batch script to update the Java env variables
case $1 in
	11 )
		set_jdk_to '"D:\Program Files\Java\jdk-11.0.11"'
		;;
	16 )
		set_jdk_to '"D:\Program Files\Java\jdk-16.0.1"'
		;;
	* )
		echo "Not a valid Java version. Installed jdks are (11, 16)";
		exit 1;
		;;
esac

# Closing statement
echo "Closing...";
exit 0;
