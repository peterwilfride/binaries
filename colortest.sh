#!/bin/bash

for (( i = 0; i < 8; i++ )); do
    for (( j = 0; j < 8; j++ )); do
        fg=`expr 30 + $i`
        bg=`expr 40 + $j`
        echo -n  -e "\e[1;1;${fg};1;${bg}m cyber \e[0m"
    done
    echo ""
done
