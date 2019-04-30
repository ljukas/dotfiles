#!/bin/bash
while true
do
    charge=$(acpi | sed 's_%,.*__g' | sed 's_.*, __');
    echo $charge
    if [[ $charge < 10 ]]
    then
        notify-send 'Battery Low'
    fi
    sleep 20
done