#!/bin/bash 
NAME="Aishah"
SURNAME="Kali"
GROUP="IT2-2309"
STUDENT_ID="37830"
 
INFO_FILE="../Kali_Aishah_info.txt"
 
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: $NAME"
echo "Surname: $SURNAME"
echo "Group: $GROUP"
echo "Student ID: $STUDENT_ID"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -sr)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo
 
if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi

