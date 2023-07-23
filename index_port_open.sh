#!/bin/bash

port=80
index_file="/var/www/html/index.nginx-debian.html"

if nc -z localhost "$port" && [ -f "$index_file" ];
then
exit 0
else 
exit 1
fi

