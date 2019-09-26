#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#firstnum=5
read -p "Please enter your first number " firstnum
read -p "Please enter your second number " secondnum
#secondnum=2
sum=$((firstnum + secondnum))
sub=$((firstnum - secondnum))
mul=$((firstnum * secondnum))
remainder=$((firstnum % secondnum))
dividend=$((firstnum / secondnum))
power=$(( firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum gives $dividend with a remainder of $remainder
  - More precisely, it is $fpdividend
$firstnum raised to the power of the $secondnum gives $power
EOF
