# Lesson 6: Using Advanced Scripting Options

## 6.1 Working with options

- An option is an argument that changes the script behavior
- Options are not often used in scripts
- `getopts` is used to deal with options

## 6.2 Using functions

-  Functions are useful if a set of operations is repeated frequently

- They must be defined *before* they can be used

- Its good practice to define all functions at the beginning of a script

- Syntax approach 1:

  `function help`

  `{`

  ​		`echo This is how to do it!`

  `}`

- Syntax approach 2:

  `help`

  `{`

  ​		`echo This is how to do it!`

  `}`

## 6.3 Working with arrays

- An array is a string variable that can hold multiple values
- Although appreciated by some, using arrays can often be avoided because modern bash can contain multiple values in a variable as well
- The amount of values that can be kept in arrays is higher, which makes them useful in some cases
- Using arrays:
  - `names=(johny sally mandy dave)`
  - `echo ${names[2]}` # Access element at index 2
  - `echo ${names[@]}` # Access all elements in array
  - `echo ${#names[@]}` # Get the count of elements (length of array)

## 6.4 Defining menu interfaces

- The `select` statement can be used to create a menu interface
  - `select DIR in /bin /usr /etc`
- In this, `DIR` is the variable that will be filled with the selected choice, and `/bin`, `/usr`, `/etc` are presented as numbered menu options
- Notice the use of `break` in select, without it the script would run forever

## 6.5 Using `trap`

- `trap` can be used to redefine signals
- Useful to disallow Ctrl+C or other ways of killing a script
- Consult `man 7 signal` for a list of available signals