#!/usr/bin/env bash
# author: dibyendu kar
# date: 22/10/2021
# description: this script will log only defined keywords and add them to a file

# tail -fn0 /var/log/messages | while read line # tail will show the last messages of a file , -f will track for live incoming trafic and n0 only looks for latest new incoming messages
# do
# echo $line | egrep -i "refused|invalid|error|fail|lost|shutdown|offline" # egrep is used for grep multiple keywords
#     if [ $? -eq 0 ]; then
#         # if body
#         echo $line >> Desktop/filtered-messages
#     fi
# done


# logger -t error "this is a error message" it will save this logger message to /var/log/messages as an error message
# nohup /root/Desktop/shell_scripting/advanced_scripting/central_logging.bash & -> it is used to learn the code in the background
 
 # sending logs as emails

# users="dibyendu01kar@gmail.com"

if [ -s Desktop/filtered-messages ]; then
      # if body
      cat Desktop/filtered-messages | sort | uniq | mail -s "syslog messages" dibyendu01kar@gmail.com
        #    rm Desktop/filtered-messages
fi
 