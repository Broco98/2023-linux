#!/bin/sh
sum=0
for i in $(seq 1 10)
do
    sum=`expr $sum + $i`
done
echo "sum of 1 to 10: "$sum
exit 0