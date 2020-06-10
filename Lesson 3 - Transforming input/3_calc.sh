#!/bin/bash

# Usage:   bash 3_calc.sh NUM1 OPERATOR NUM2
# Example: bash 3_calc.sh 10 - 5

let x="$1 $2 $3"
echo Calculation: "$1 $2 $3"
echo Result: $x

exit 0