#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: 2bDOkEGhn3XRZZG00LH47rWguGG_2qERw4jwiZH29WJxzoE32"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
