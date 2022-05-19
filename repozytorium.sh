#!/bin/bash

MESSAGE="System Information For $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")

function init {
    printf "$MESSAGE\n" > file.log
    printf "$CURRENT_TIME\n" > file.log
    cat file.log
}

function disk {
    echo "Disk Space For $HOSTNAME"
    df -h
}

for (( ; ; )) 
do 
    echo -n "Please enter an integer -> "
    read int

    if [ "$int" -eq 3 ]; then
        break
    fi

    if [ "$int" -eq 0 ]; then
        init
    else
        if [ "$int" -eq 1 ]; then
            disk
        fi
    fi

    echo "CTRL+C to stop or enter 3."
done
