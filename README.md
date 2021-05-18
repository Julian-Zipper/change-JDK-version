# Change JDK automatically :factory:
one console/terminal command is all that's needed.

### Usage instractions :microscope: 
1. Simply call the script with an installed JDK version number, F.E.: `change_java 11`
2. A CMD elevation prompt will pop up, accept it
3. Ta-Da!

### Why is this necessary?
Because manually switching between JDK versions (on windows) should really just be less time-consuming.

Noone likes spending too much time in windows registry/environment variables (i hope). Or looking up JDK installation folders every time you'd need to switch. Okay, yeah, there's still some manual work involved - for each JDK the correct installation folder must be added to the script. But it's less time consuming than the alternative.

### 1st time use :blue_book:
- Add an alias for the script to your .bashrc or equivalent (i'm using **Git for Windows**):
`alias change_java='/d/PATH_TO_PROJECT/change-JDK-version/change_java.sh'`
this allows you to simply call the script from your console/terminal:
`change_java 11`
- Add `%JAVA_HOME%\bin` to your PATH (Don't know how? check out [this guide](https://www.webucator.com/how-to/how-set-path-from-java_home.cfm))
- Add each JDK you have installed to the case statement. See the final section in the README.

### Installing other JDKs :hammer: 
1. To add another JDK version to the script, first add its version number to the case statement. For example, if adding Java 11, it'll look like this:
```bash
11 )
	<code here>
	;;
```
2. Of course `<code here>` needs to be replaced with actual code. Call the function 'set_jdk' and also pass along the Folder location of your JDK, like so:
```bash
	set_jdk "D:\Program Files\Java\jdk-11.0.11";
```
