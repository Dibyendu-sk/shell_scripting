#!/usr/bin/env bash
# author: dibyendu kar
# date: 21/10/2021
# description: copying files to remote servers

for i in box@192.168.0.105  # hostnames,i have 1 host
do
scp Desktop/shell_scripting/advanced_scripting/read $i:./Desktop
done