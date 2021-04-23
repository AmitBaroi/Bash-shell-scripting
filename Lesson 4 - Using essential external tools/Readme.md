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

- `sed` is more than just a text processing utility, its a programming language with many features
- A limited set of these are useful in scripts
- eg:
  - `sed -n 5p /etc/passwd`
  - `sed -i s/old-text/new-text/g~/myfile`
  - `sed -i -e '2d' ~/myfile`
  - `sed -i -e '2d:20,25d' ~/myfile`

## 4.6 Using `awk`

- Like `sed`, `awk` is a very rich language
- In scripts we will appreciate it as an alternative to `cut` to filter information from text files on regular expression-based patterns
- The basic usage is `awk '/search pattern/ {Actions}' file`
- eg: (here the `,` or `:` are delimiters)
  - `awk -F , '{ print $2 }' some.csv`    # prints 2nd col of file (where comma is delimiter)
  - `awk -F , '/amit/ {print $3}' some.csv`    # prints 3rd col of the row having 'amit' (any col)
  - `awk -F : '{ print $1,$NF }' /etc/passwd`    # prints 1st and last field ($NF is the last field)
  - `awk -F : '$3 > 500' /etc/passwd`    # Filters out the rows with 3rd col value > 500
  - `awk -F , ' $3 < 30 ' some.csv`    # Filters out the rows with 3rd col value < 30
  - `awk -F , ' $4 ~/captain/ ' some.csv`    # Filters out the rows having captain in 4th col value

## 4.7 Using `tr`

- `tr` helps in transforming strings
- `echo hello | tr [a-z][A-Z]`                    # Specific to English and similar languages
- `echo hello | tr [:lower:][:upper:]`   # Much much more flexible (preferred)