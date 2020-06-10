# Lesson 3: Transforming Input

## 3.1 Working with substitution operators

- A substitution operator (also known as string operator) allows you to manipulate values of variables in an easy way
  - Ensure that variables exist
  - Set default values for variables
  - Catch errors that result from non-existent variables
  - Remove portions of variable values

### Substitution operator examples

- `${VAR:-word}` if `$VAR` exists, use its value. Else, return the value "word". This does not assign the value "word" to the variable `$VAR`.
- `${VAR:=word}` if `$VAR` exists, use its value. Else, set the default value to "word".
- `${VAR:?message}` if `$VAR` exists, show its value. Else, show an error message and exit.
- `${VAR:offset:length}` if `$VAR` exists, show the substring of `$VAR`, string at offset with a length of length. This is kind of like array or string slicing.

## 3.2 Using pattern matching operators

- Patter matching is used to *remove* patterns from a variable

- Its an excellent way to clean up variables that have too much information

  - For example, if `$DATE` contains "05-01-15" and you just need the year
  - Or if a file has the extension *.doc and you want to rename it to use the extension *.txt

- `${VAR#pattern}`: Search for pattern from the **beginning** of the variable value, delete the **shortest** part that matches and return the rest

  - `FILENAME=/usr/bin/blah`

    `echo ${FILENAME#*/}`		 # Pattern: `*/` anything followed by a slash

    output: `usr/bin/blah` 		# Removed all until the first slash `/` from the start

- `${VAR##pattern}`: Search for pattern from the **beginning** of the variable value, delete **longest** part that matches and return the rest

  - `FILENAME=/usr/bin/blah`

    `echo ${FILENAME##*/}`	  # Pattern: `*/` anything followed by a slash

    output: `blah` 						# Removed everything up until the `/` before `blah` (longest pattern)

- `${VAR%pattern}`: If pattern matches the **end** of the variables value, delete the **shortest** part that matches, and return the rest

  - `FILENAME=/usr/bin/blah`

    `echo ${FILENAME%/*}`		# Pattern: `/*` slash followed by anything

    output: `/usr/bin` 				# Removed all until the first slash `/` from the end

- `${VAR%%pattern}`: If pattern matches the **end** of the variables value, delete the **longest** part that matches, and return the rest

  - `FILENAME=/usr/bin/blah`

    `echo ${FILENAME%%/*}`	 # Pattern: `/*` backslash followed by anything

    output: ` ` 								# Removed everything

## 3.3 Understanding regular expressions

- Regular expressions are search patterns that can be used by *some* utilities 
  - Example utilities: `grep` (Generic Regular Expression Parser), `awk`, `sed`
- Regular expressions are not the same as shell wildcards
- When using regular expressions, put them between strong quotes `'` so that the shell wont interpret them

### Regular expressions overview

`^text` 			 		 Line starts with text

`text$` 					  Line ends with text

`.` 					 		 Wildcard (Matches any single character)

`[abc]` or `[a-c]` 	Matches a, b, or c

`*` 							  Matches 0 to an infinite number of the previous character

`\{2\}` 					  Matches exactly 2 of the previous character

`\{1,3\}` 				  Matches a minimum of 1 and a maximum of 3 of the previous character

`colou?r` 				  Match 0 or 1 of the previous character (which makes the previous character optional)

​								   Result: matches to both `color` and `colour`

## 3..4 Calculating

- Bash offers different ways to calculate in a script

- Internal calculation: `$(( 1 + 1 ))`

- External calculation with `let`:

  - `let x="5 + 3"`

    `echo $x`

- External calculation with `bc`
  - `bc` is developed as a calculator with its own shell interface
  - It can deal with more than just integers
  - Use `bc` in non-interactive mode:
    - `echo "scale=9; 10/3"|bc`				# scale specifies the number of decimals
  - Or in a variable:
    - `VAR=$(echo "scale=9; 10/3"|bc)`

### Math operators

`+` Addition, 	`-` Subtraction, 	`/` Division (integer division)