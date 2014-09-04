#!/usr/bin/env bash

QUERY='{query}'

echo "<?xml version=\"1.0\"?>"
echo "<items>"

if [[ ! -z ${QUERY} ]]; then
    if [ ! -n "`echo $QUERY | sed 's/[0-9]//g'`" ]; then
        echo "<item uid=\"result\" arg=\"Call '$QUERY'\"><title>Call '$QUERY'</title><subtitle></subtitle><icon>icon.png</icon></item>"
    else
        echo "<item uid=\"\" arg=\"error\"><title>Error: Not a valid phone number!</title><subtitle></subtitle><icon>icon.png</icon></item>"
    fi
else
    echo "<item uid=\"\" arg=\"waiting\"><title>Waiting for string...</title><subtitle></subtitle><icon>icon.png</icon></item>"
fi

echo "</items>"
