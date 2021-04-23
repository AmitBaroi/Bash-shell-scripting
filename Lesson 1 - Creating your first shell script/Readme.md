# Lesson 1: Creating Your First Shell Script

## 1.1 Why scripting in bash makes sense

- `/bin/sh` is the default shell since the very first days of UNIX
	- Many alternative shells have been developed and are still available and used
	- `/bin/bash` is the most common shell on Linux and other Unices

- Large parts of the operating system and its applications are written in bash
	- Look for instance in `/etc/init.d`, `/etc/profile` and many more


## 1.2 What exactly is a script?

- A script is a simple program that doesn't have to be compiled

- A script can be a mere list of commends that are executed sequentially

- Or more clever things can be accomplished, using smart elements like:
	- variables
	- conditional structures
	- user input processing

**Note**: Bash is Turing complete!


## 1.3 Core bash script ingredients

- The "shebang": `#!/bin/bash`
	
- ''#'' is NOT a comment sign in this case
	
- Comment lines explaining what the script wants to accomplish

- White lines and other structural components that make the script readable

- An exit statement if you don't want to use the exit status of the last command in the script


## 1.4 Storing and running the script

- On Linux the current directory is not in the `$PATH` variable

- Consider storing the script in a directory that is in the `$PATH`, such as `/usr/local/bin` or `$USER/bin`

- Or run the script using `./myscript.sh`

- Notice that running a script without `./` in front may lead to unexpected results

### Making your script executable

- In order to run the script, it must have the execute permission applied
	- `chmod +x myscript.sh`
	
- If the script is started as an argument to the bash shell, it doesn't need the execute permission itself
	- `bash myscript.sh`


## 1.5 Using bash internal commands vs external commands

- An *internal command* is a part of the Bash shell
	- It does not have to be loaded from disk and therefore is faster
	- Use the `help` command to get a list of all internal commands

- An *external command* is a command that is loaded from an executable file on disk
	-  External commands normally are slower.