# Lesson 4: Using Essential External Tools

## 4.1 Using `grep`

- General Regular Expression Parser or `grep` is a very flexible tool to search for text patterns based on regular expressions
  - `grep -i`: case insensitive
    - `grep -i what*`
  - `grep -v`: excludes lines that match the pattern
    - `grep -v what*`
  - `grep -r`: recursive
    - `grep -r what`
  - `grep -e`: matches more regular expressions
    - `grep -e 'what' -e 'else'*`
  - `grep -A5`: shows 5 lines after the matching regex
  - `grep -B4`: shows 4 lines before the matching regex

## 4.2 Using `test`

- `test` allows for testing on many items
  - expression: `test (ls /etc/hosts )`
  - string: `test -z $1`
  - integers: `test $1 = 6`
  - file comparisons: `test file1 -nt file2`
  - file properties: `test -x file1`

### Three ways to test

- `test -z $1`: old method, using an internal bash command
- `[ -z $1 ]`: equivalent to test, using a bash internal
- `[[ -z $1 ]]`: new improved version of `[ ]`. Not as universal, but has `&&` and `||` built in
- Best practice: if it doesn't work using `[ ]`, try using `[[ ]]`
- If compatibility with older shells doesn't matter, use `[[ ]]`
- Compare the following having same effect:
  - `[ $BLAH=a* ] || echo string does not start with a`
  - `[[ $BLAH = a* ]] || echo string does not start with a`

## 4.3 Using `cut` and `sort`

- `cut` is used to filter a specific column or field out of a line
- `sort` is used to sort data in a specific order
- `cut` and `sort` are often seen together
- Examples:
  - `cut -f 1 -d : /etc/passwd` 						# field `-f` 1 (first field), delimiter `-d` : (colon is delimiter)
  - `sort /etc/passwd`
  - `cut -f 2 -d : /etc/passwd | sort -n`     # `-n` means numeric sort
  - `du -h | sort -rn`                                             # `-rn` means reverse numeric sort
  - `sort -n -k2 -t : /etc/passwd`

## 4.4 Using `tail` and `head`

- `tail` is used to display the last line(s) of a file
- `head` is used to display the first line(s) of a file
- eg:
  - `tail -2 /etc/passwd`
  - `head -2 /etc/passwd`
  - `head -5 /etc/passwd | tail -1`

## 4.5 Using `sed`



## 4.6 Using `awk`



## 4.7 Using `tr`