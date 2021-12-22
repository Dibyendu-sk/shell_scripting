#!/usr/bin/env bash
# author: dibyendu kar
# date: 19/10/2021
# description: backuping /etc and /var


tar cvf /root/bacup1.tar /etc /var  # archiving

gzip /root/bacup1.tar # compressing

find /root/bacup1.tar.gz -mtime -1 -type f -print &> /dev/null # find the file with today's date and flush the outpute /dev.null

if [ $? -eq 0 ]; then
     echo
     echo 'backup was created'
     echo
     echo 'archiving up'
     # scp /root/backup.tar.gz root@192.168.1.x:/path -> to transfer the file from  local to remte system

else
     echo 'backup failed'
fi

