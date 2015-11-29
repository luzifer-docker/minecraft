#!/bin/bash

echo "eula=true" > /data/eula.txt
exec /usr/bin/java \
  -Xmx${MEMORY}M -Xms${MEMORY}M \
  -jar /minecraft_server.jar \
  nogui
