#!/usr/bin/env bash
# author: dibyendu kar
# date: 19/10/2021
# description: creating multiple files with user input

# for i in {1..5}
# do
#     echo 
#     read -p "enter the file name you want to create > " file
#     touch $file.$i
    
# done


# read -p "enter the number of file(s) you want to create > " num
# for i in $(seq 1 $num) # {1..2/any numbers} only work with numbers not with user input so we use $(seq 1 $num)
# do
#     echo 
#     read -p "enter the file name you want to create > " file
#     touch $file.$i
    
# done

# assigning permissions

read -p "enter the number of file(s) you want to create > " num
for j in $(seq 1 $num) # {1..2/any numbers} only work with numbers not with user input so we use $(seq 1 $num)
do
    echo 
    touch diip.$j
    
done

for k in diip.*
do
    echo assigning writing permission to $k
    chmod +w $k
    sleep 1s
done
if [ $? -eq 0 ]; then
     # if body
     echo permission assigning completed !!!
else
     # else body
     echo not assigned successfully !!!
fi
