#!/bin/bash

# Check if your dum-dum self forgot to pass a java version as argument
if [ $# -eq 0 ]
then
	echo "No Java version provided. Please pass an argument (F.E. change_java 11)";
	exit 1;
fi

# define a fuction to call the .batch script used to change JDK in registry
# Requires an argument - the path to the JDK installation folder
set_jdk () {
	cd $(dirname "$0");
	./change_jdk.bat $1;
	
	echo "Batch script finished updating JAVA_HOME";
	echo "Succesfuly switched JDK to $1";
}

# for any valid JDK, call the updating function with the JDK installation folder
# Want to Modify/Add JDKS? Do it in this case statement.
case $1 in
	8 )
		set_jdk "E:\Program Files\Java\jdk1.8.0_144";
		;;
	11 )
		set_jdk "E:\Program Files\Java\jdk-11.0.11";
		;;
	13 )
		set_jdk "E:\Program Files\Java\jdk-13.0.2";
		;;
	15 )
		set_jdk "E:\Program Files\Java\jdk-15.0.2";
		;;
	* )
		echo "Not a valid Java version. Installed jdks are (8, 11, 13, 15)";
		exit 1;
		;;
esac

# Closing statement
echo "Closing...";
exit 0;
