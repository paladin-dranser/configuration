# This script update firefox browser from ~/Download/firefox*tar.bz2
#!/bin/bash

dir=/home/dranser/Downloads/
firefox=$(find "$dir" -maxdepth 1 -name "firefox-*.tar.bz2")

if ! [ $(id -u) = 0 ]; then
    echo "The script need to be run as root." >&2
    exit 1
fi

if [ -e "$firefox" ]; then
    if [ -d "/opt/firefox" ]; then
        rm -rf /opt/firefox/
    fi

    tar -jxf "$firefox" -C /opt
    rm -f "$firefox" 
    echo "Firefox is updated!" >&2
else
    echo "There isn't a new version of firefox in $dir!" >&2
fi
