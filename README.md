# Change JDK automatically :factory:
Because manually switching between JDK versions (on windows) should really be less sluggish :snail:

There's still some manual work involved; for each JDK the correct installation folder must be added to the case statement in this bash script.

### Usage instractions :microscope: 
1. Simply call the script with an installed JDK version number: `change_java 11`
2. A CMD elevation prompt will pop up, accept it
3. Ta-Da!

### 1st time use :blue_book:
- Add an alias for the script to your .bashrc or equivalent (i'm using **Git for Windows**): `alias change_java='/d/PATH_TO_PROJECT/change-JDK-version/change_java.sh'`, which allows you to simply call F.E. `change_java 11` from your console/terminal.
- Add each JDK you have installed to the case statement. See [Installing other JDKS](#Installing-other-JDKS)

### Installing other JDKs :hammer: 
1. To add another JDK version to the script, first add its version number to the case statement. For example, if adding Java 11, it'll look like this:
```bash
11 )
	<code here>
	;;
```
2. and in the case statement itself, call the batch script with the installation folder of that JDK, like so:
```bash
11 )
	set_jdk_to '"D:\Program Files\Java\jdk-11.0.11"';
	;;
```
*Note that on windows, the path to the JDK installation Folder probably has at least one space in it. Like mine, with "Program Files". That's why the String has to be placed inside single quotes (') and double quotes ("), to prevent the parameter passed to the .bat script from being split up.*