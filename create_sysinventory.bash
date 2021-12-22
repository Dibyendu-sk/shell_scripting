#!/usr/bin/env bash
# author: dibyendu kar
# date: 31/10/2021
# description: taking user input and storing it in an another file and delete inventory through user input

clear
echo type :
echo
echo "1 to print the record    2 to create an inventory"
echo 
echo "3 to delete an inventory"
echo

read -p "please enter your choice : " choice

case "${choice}" in
    1)
            cat /root/database.txt
    ;;
    2)
                    # creating inventory
            echo
            read -p "enter your hostname > " host_name

            echo
                grep $host_name /root/database.txt
                if [ $? -eq 0 ]; then
                    # if body
                    echo "---ERROR--- hostname already exists "
                fi

            read -p "enter your IP > " IP

            echo
                grep $IP /root/database.txt
                if [ $? -eq 0 ]; then
                    # if body
                    echo "---ERROR--- ip already exists "
                fi

            read -p "enter description > " description
            echo
            echo "$host_name | $IP | $description" >> /root/database.txt # it will add the information into the database.txt
            if [ $? -eq 0 ]; then
                # if body
                echo the provided record has been added
            fi
    ;;
    3)
                    # deleting inventory
        
        clear
        read -p "please enter hostname or ip > " hostip
        echo
            grep -w $hostip /root/database.txt # we use -w to match the exact word 
            if [ $? -eq 0 ]; then
                 # if body
                 echo
                 sed -i '/'$hostip'/d' /root/database.txt # it will delete the inventory
                 if [ $? -eq 0 ]; then
                      # if body
                      echo inventory successfully deleted
                 else
                      # else body
                      echo "---ERROR--- inventory not deleted"
                 fi
                 
            else
                 # else body
                 echo
                 echo "$hostip not found in the database"
            fi
            
    ;;
    *)
        echo "default (none of above)"
    ;;
esac
























    