#!/bin/bash
# shft.sh: Using 'shift' to step through all the positional parameters.

#  Name this script something like shft.sh,
#+ and invoke it with some parameters.
#+ For example:
#             sh shft.sh a b c def 83 barndoor

a=1

if [ -z "$1" ]
then
echo "Usage: `basename $0` [para]"
exit
fi

until [ -z "$1" ]  # Until all parameters used up . . .
do
  #echo -n "$1"
  echo "para state "$a": $*"
  let a+=1
  if [ "$a" -eq 3 ]
  then
    shift 2
  else
    shift
  fi
    done

    echo               # Extra linefeed.

    # But, what happens to the "used-up" parameters?
    echo "\$*: $*"
    #  Nothing echoes!
    #  When $2 shifts into $1 (and there is no $3 to shift into $2)
    #+ then $2 remains empty.
    #  So, it is not a parameter *copy*, but a *move*.

    exit

    #  See also the echo-params.sh script for a "shiftless"
    #+ alternative method of stepping through the positional params.
