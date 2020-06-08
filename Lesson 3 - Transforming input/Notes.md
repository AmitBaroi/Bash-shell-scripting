# Lesson 3: Transforming Input

## 3.1 Working with substitution operators

- A substitution operator (also known as string operator) allows you to manipulate values of variables in an easy way
  - Ensure that variables exist
  - Set default values for variables
  - Catch errors that result from non-existent variables
  - Remove portions of variable values

### Substitution operator examples

- `${VAR:-word}` if `$VAR` exists, use its value, if not, return the value "word". This does not assign the value "word" to the variable `$VAR`
- `${VAR:=word}` if `$VAR` exists, use its value, if not, set the default value to "word"
- `${VAR:?message}` if `$VAR` exists, show its value. If not, display `VAR` followed by message. If message is omitted, the message VAR: parameter null or not set will be shown.
- `${VAR:offset:length}` if `$VAR` exists, show the substring of `$VAR`, string at offset with a length of length

## 3.2 Using pattern matching operators



## 3.3 Understanding regular expressions



## 3..4 Calculating

