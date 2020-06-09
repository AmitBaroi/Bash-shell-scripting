#!/bin/bash

# Demonstation of substitution operators
# ${VAR:-default_return_value}
# ${VAR:=assign_default_value}

# Set variable to null value
DATE=
echo 1. \$DATE: \'$DATE\'

# Return default value if var empty
echo ${DATE:-today}
echo 2. \$DATE: \'$DATE\'

# Set a specified value if var empty
echo ${DATE:=today}
echo 3. \$DATE: \'$DATE\'

exit 0