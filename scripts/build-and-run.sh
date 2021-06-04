#!/bin/bash

set -e

docker build -t ssh-web-client .

docker stop ssh-web-client | xargs docker rm

docker run -d -p 8080:3000 --name ssh-web-client ssh-web-client

URL=http://localhost:8080
if which xdg-open > /dev/null
then
  xdg-open "$URL"
elif which gnome-open > /dev/null
then
  gnome-open "$URL"
fi
