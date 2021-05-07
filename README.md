# Change JDK automatically :factory:
Because manually switching between JDK versions (on windows) should really be less sluggish :snail:

There's still manual work involved in creating the .bat files for every JDK installed (and future installations of JDKs), that is a one time thing. And if you ever find yourself diving through windows environment variables multiple times a day, well, you can't say i didn't warn ya.

### 1st time use :blue_book:
- Add an alias for the script to your .bashrc or equivalent (i'm using **Git for Windows**): `alias change_java='/d/PATH_TO_SCRIPT/change_java.sh'`
- Create a .bat file for each JDK on your machine. Follow the jdk-11/jdk-16 Examples included. (Make sure the filepath is correct!)
- Add a call for each .bat file to the case statement in the script. Follow the jdk-11/jdk-16 examples included.

### Usage instractions :microscope: 
1. Simply call the script with an installed JDK: `change_java 11`
2. A CMD elevation prompt will pop up, accept it
3. Ta-Da!

### Installing more/other JDKs :hammer: 
- like listed in 1st time use: When installing a new JDK on your machine, make sure to create a new .bat file and add the call to the .bat file in the case statement in this script.