#!/bin/sh
myvar="hi sys"
echo $myvar
echo "$myvar"
echo '$myvar'
echo \$myvar
echo type somethind you want :
read myvar
echo '$myvar' = $myvar
exit 0