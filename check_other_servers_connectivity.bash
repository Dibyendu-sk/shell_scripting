#!/usr/bin/env bash
# author: dibyendu kar
# date: 12/10/2021
# description: to check the status of remote host

# echo enter the ip 
# read -p "> " ip
# ping -c1 $ip


# if [ $? -eq 0 ]; then
#      # if body
       # echo
#      echo successfully pinged to $ip
# else
#      # else body
#      echo $ip not connected successfully
# fi

# echo enter the ip 
# read -p "> " ip
# ping -c1 $ip &>/dev/null # it will vanish the output of ping command


# if [ $? -eq 0 ]; then
#      # if body
#      echo
#      echo successfully pinged to $ip
# else
#      # else body
#      echo
#      echo $ip not connected successfully
# fi

# pingiing multiple ip together

iplist="/root/Desktop/shell_scripting/advanced_scripting/ip_list"

for ip in $(cat $iplist)
    do 
        ping -c1 $ip &>/dev/null
        if [ $? -eq 0 ]; then
            # if body
            echo
            echo $ip connected successfully
        else
            # else body
            echo
            echo $ip not connected
        fi
done



