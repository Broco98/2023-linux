#!/bin/sh

isInteger() {
    if [ "$1" -eq "$1" ] 2>/dev/null; then # Illegal number error -> not display 
        return 0 # 0 is true
    else
        return 1
    fi
}

multi(){
    for i in $(seq 1 $1) ; do
        for j in $(seq 1 $2) ; do
            result=`expr $i \* $j`
            echo -n "$i*$j="$result"\t" # -n is not \n
        done
        echo 
    done
}

# check Integer or Not (Empty, String ...)
if ! isInteger "$1" || ! isInteger "$2" ; then
    echo "Invalid input"
    exit 1
fi

# check Positive or Not
if [ $1 -gt 0 ] && [ $2 -gt 0 ] ; then
    multi $1 $2
else
    echo "Input must be greater than 0"
fi
exit 0