# Lesson 2: Working with Variables and Parameters

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

- By using sourcing the contents of one script can be included in another script
- This is a very common method to separate static script code from dynamic content
  - This dynamic content often consists of variables and functions
- Use the `source` command or the `.` command to source scripts
- Do not use `exit` at the end of a script that needs to be sourced

## 2.6 Quoting

Special characters in bash:

`~` 	Home directory

`` ` 	Command substitution

`#` 	Comment

`$`	 Variable expression

`&`	 Background job

`*` 	String wildcard

`(` 	Start subshell

`)` 	End subshell

`\` 	Quote next character

`'` 	Strong quote

`"` 	Weak quote

`|` 	Pipe (Output of one command will be input for another)

`[`	 Start character set wildcard

`]`	 End character set wildcard

`{` 	Start command block

`}` 	End command block

`;`	 Shell command separator

`<` 	Input redirect

`>` 	Output redirect

`/` 	Pathname directory separator

`?`	 Single character wildcard

### Understanding command line parsing

- When a command is interpreted by the shell, the shell interprets all special characters
  - This process is known as *command line parsing*
- Commands themselves may interpret parts of the command line as well
- To ensure that a special character is interpreted by the command and not by the shell, use quoting
- Use: `bash -x script.sh` to run a script while showing what each line is doing
  - Very helpful for debugging scripts

### Quoting

- Quoting is used to treat special characters literally
- If a string of characters is surrounded with single quotation marks `'`, all characters are stripped of the special meaning they may have
  - Imagine `echo 2 * 3 > 5`, which would be interpreted
  - Or imagine `find .-name "*.doc"` which ensures that `find` interprets *.doc and not the shell
- Double quotes `"` are *weak quotes* and treat only some special characters as special
  - Ignores pipe characters, aliases, tilde substitution, wildcard expression, and splitting into words using delimiters
  - Allows parameter substitution, command substitution, and arithmetic expression evaluation
- Best practice: use single quotes `'` unless you specifically need parameter, command or arithmetic substitution
- A backslash `\` can be used to escape one character following it

## 2.7 Handling script arguments

- Any argument that was used when starting a script, can be dealt with from within the script
- Use `$1`, `$2` and so on to refer to the first, the second etc. argument
- Use `$0` to refer to the name of the script itself
- Use `${nn}`or `shift` to refer to arguments beyond 9
- Arguments that are stored in `$1` etc. are read only and cannot be changed from within the script

### Handling arguments the smart way

- Referring to arguments one by one, works only if the amount of arguments is known beforehand
- If this is not the case, we can use `for` to loop over all the possible arguments
- Use `$@` to refer to all arguments provided, where all arguments can be treated one by one (returns an array of the arguments)
- Use `$#` to count the number of arguments provided
- Use `$*` if you need a single string that contains all arguments

## 2.8 Understanding the need to use shift

- Shift removes the first argument from the list of arguments, so the second argument is shifted forward and gets stored in `$1`
- Shift is useful in older shell versions that do not understand `${10}` etc.

## 2.9 Using command substitution

- Command substitution allows using the result of a command in a script
- Useful to provide ultimate flexibility
- To allowed syntaxes:
  - `` `command` `` (deprecated)
  - `$(command)` (preferred)
- eg: `ls - $(which passwd)`

## 2.10 String verification

- When working with arguments and input, it is useful to be able to verify availability and correct use of a string
- Use `test -z` to check if a string is empty
  - `test -z $1 && exit 1`
- Use `[[ ... ]]` to check for specific patterns
  - `[[ $1=='[a-z]*' ]] || echo $1 does not start with a letter`
- `&&` - the AND operator
- `||` - the OR operator
- `==` - the comparison operator
  - Just like assignment use `==` without any spaces in between
- More about this in Lesson 3


## 2.11 Using here documents

- In a here document, I/O redirection is used to feed a command list into an interactive program or command, such as for instance `ftp` or `cat`
- Use it in scripts to replace `echo` for long texts that need to be displayed
- Use it if in a script a command is called that opens its own prompt, such as an FTP client interface