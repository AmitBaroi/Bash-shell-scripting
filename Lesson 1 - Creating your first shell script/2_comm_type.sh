#!/bin/bash

# The type command shows if a command is internal or external
type help
type ./1_hello.sh

# The which command shows the directory of the command being executed
which help
which ./1_hello.sh

exit 0