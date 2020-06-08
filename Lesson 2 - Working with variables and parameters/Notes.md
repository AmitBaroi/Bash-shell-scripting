# 2 Working with Variables and Parameters

## 2.1 About terminology

- An *argument* is anything that can be used after a command
	- `ls -l /etc` has two arguments `-l` and `/etc`

- An *option* is an argument that was specifically developed to change the command behavior (eg: `-l` in the above example)

- A *parameter* is a name that is defined in a script to which a specific value is granted

- A *variable* is a label that is stored in memory and contains a specific value


## 2.2 Using and defining variables

- Using variables makes a script flexible

- They allow for dynamic scripts that can easily be modified to act on different values

### Declaring variables

There are tree ways to define variables:
1. Static: `VAR_NAME=value`
	- First write the name of the variable `VAR_NAME`
	- After the variable name write the equal sign `=` followed by the value we want to assign
	- eg: `DIRECTORY='/var/log/messages'`
	- By convention, variables in bash are written in uppercase, but that isn't manditory.

2. As an argument to a script, handled using $1, $2 etc. within the script

3. Interactively, using `read`

- To get the value of a variable: `$VAR_NAME`
	- Write the dollar sign `$` followed by the variable name
- Variables remain in memory only within the scope of the script
- To retain it after the script finishes executing or outside a subshell, use `export`
  - eg: `export COLOR=blue`

## 2.3 Defining variables with the read command

- Format `read VAR_NAME`

- We simply write the variable name `VAR_NAME` after the `read` command
- `read` will stop the script until input is provided
- If an argument is provided to read, this argument will be treated as a variable and the entered value is stored in the variable
  - Multiple arguments can be provided to enter multiple variables
  - Use `read -a somename` to write all words to an array with the name `somename`. (We will learn about arrays in detail later)
- If no input is provided, the script will just pause until the user presses the **Enter** key

## 2.4 Understanding variables and subshells

- A variable is effective only in the shell where it was defined
- Use export to make it also available in subshells 
  - Subshells are shells within shells: with bash open enter bash command again
  - Now we are inside a bash shell which is inside the main bash shell
- There is no way to make variables available in parent shells

### Defining variables at the start of a shell

- `/etc/profile` is processed when opening a login shell
  - All variables defined here are available in all subshells for that specific user
  - User specific version can be user in `~/.bash_profile`
- `/etc/bashrc` is processed when opening a subshell
  - Variables defined here are included in subshells from that point on
  - User specific versions can be used in `~/.bashrc`


## 2.5 Sourcing


## 2.6 Quoting


## 2.7 Handling script arguments


## 2.8 Understanding the need to use shift


## 2.9 Using command substitution


## 2.10 String verification


## 2.11 Using here documents

