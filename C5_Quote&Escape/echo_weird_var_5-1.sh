#!/bin/bash
# weirdvars.sh: Echoing weird variables.

echo

var="'(]\\{}\$\""
echo $var        # '(]\{}$"
echo "$var"      # '(]\{}$"     Doesn't make a difference.

echo

IFS='\'
echo $var        # '(] {}$"     \ converted to space. Why?
echo "$var"      # '(]\{}$"

# Examples above supplied by Stephane Chazelas.

echo

var2="\\\\\""
echo $var2       #   "
echo "$var2"     # \\"
echo
# But ... var2="\\\\"" is illegal. Why?
var3='\\\\'
echo "$var3"     # \\\\
# Strong quoting works, though.


# ************************************************************ #
# As the first example above shows, nesting quotes is permitted.

echo "$(echo '"')"           # "
#    ^           ^


# At times this comes in useful.

var1="Two bits"
echo "\$var1 = "$var1""      # $var1 = Two bits
#    ^                ^

# Or, as Chris Hiestand points out .

echo "Why can't I write 's between single quotes"

echo

# The roundabout method.
echo 'Why can'\''t I write '"'"'s between single quotes'
