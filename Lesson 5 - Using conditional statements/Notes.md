# Lesson 5: Using Conditional Statements

## 5.1 Using if then fi

- Used to perform actions based on a specific conditions. Basic if syntax:

  `if condition`

  `then`

  ​		`command 1`

  ​		`command 2`

  `fi`

- `else` can be included for alternative case

  `if condition`

  `then`

  ​		`command 1`

  ​		`command 2`

  `else`

  ​		`command 3`

  `fi`

- Use `elif` for multiple conditions:

  `if condition 1`

  `then`

  ​		`command 1`

  `elif condition 2`

  ​		`command 2`

  `else`

  ​		`command 3`

  `fi`

## 5.2 Using && and ||

- `&&` and `||` and the logical AND and OR operators in bash
- They can be used as a short notation for if ... then ... fi constructions
- When using `&&` the second command is executed only if the first returns an exit code zero
  - `[ -z $1 ] && echo 1$ is not defined`
- When using `||` the second command is executed only if the first command does not return an exit code of zero
  - `[ -f $1 ] || echo 1$ is not a file`

## 5.3 Using for

- `for` is useful to iterate over a range or series. Basic syntax:

  `for i in iterable`

  `do`

  ​		`command 1`

  ​		`command 2`

  `done`

- `for i in  $(cat some.csv); do echo $i; done`

- `for i in {1..5}; do echo $i; done`

- Here `{1..5}` creates a list of numbers from 1 to 5 (inclusive)

  - Syntax: `{start..end}`

## 5.4 Using case

- `case` is used if specific values are expected

- The most common example is in the legacy system V / Upstart init scripts in /etc/init.d

  `case $VAR in`
  
  `yes)`
  
  ​		`echo OK;;`
  
  `no | nee)`
  
  ​		`echo Too bad;;`
  
  `*)`
  
  ​		`echo Try again;;`
  
  `esac` 

## 5.5 Using while and until

- `while` executes a command as long as a condition is True

- `until` executes a command as long as a condition is False

  `while|until condition`

  `do`

  ​		`command`

  `done`

  