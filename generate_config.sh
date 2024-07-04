#!/bin/bash

# Generate server.properties file

MAXPLAYERS=${MAXPLAYERS:-20}
ONLINEMODE=${ONLINEMODE:-true}

# IF rcon password is set, set RCONENABLED to true, else false
if [ -z "$RCONPASSWORD" ]; then
    RCONENABLED=false
else
    RCONENABLED=true
fi

echo "Generating server.properties file..."
# set port to envvar PORT or default to 25565
echo "server.port=25565\r\n" > server.properties
echo "motd=&3Logiscool &7- &3Minecraft\r\n" >> server.properties
echo "server-ip=\r\n" >> server.properties
echo "max-players=$MAXPLAYERS\r\n" >> server.properties
echo "online-mode=$ONLINEMODE\r\n" >> server.properties
echo "gamemode=1\r\n" >> server.properties
echo "allow-flight=true\r\n" >> server.properties
echo "enable-command-block=false\r\n" >> server.properties
echo "white-list=false\r\n" >> server.properties
echo "pvp=false\r\n" >> server.properties
echo "spawn-npcs=false\r\n" >> server.properties
echo "spawn-animals=false\r\n" >> server.properties
echo "generate-structures=false\r\n" >> server.properties
echo "force-gamemode=false\r\n" >> server.properties
echo "hardcore=false\r\n" >> server.properties
echo "level-name=world\r\n" >> server.properties
echo "difficulty=peaceful\r\n" >> server.properties
echo "op-permission-level=4\r\n" >> server.properties
echo "function-permission-level=2\r\n" >> server.properties
echo "view-distance=10\r\n" >> server.properties
echo "max-world-size=29999984\r\n" >> server.properties
echo "spawn-protection=0\r\n" >> server.properties
echo "resource-pack=\r\n" >> server.properties
echo "resource-pack-sha1=\r\n" >> server.properties
echo "require-resource-pack=false\r\n" >> server.properties
echo "broadcast-console-to-ops=true\r\n" >> server.properties
echo "enable-rcon=$RCONENABLED\r\n" >> server.properties
echo "rcon.password=$RCONPASSWORD\r\n" >> server.properties
echo "rcon.port=25575\r\n" >> server.properties
echo "broadcast-rcon-to-ops=true\r\n" >> server.properties
echo "enable-query=true\r\n" >> server.properties
echo "enable-jmx-monitoring=false\r\n" >> server.properties
echo "enable-status=true\r\n" >> server.properties
echo "sync-chunk-writes=true\r\n" >> server.properties
echo "enable-advancements=false\r\n" >> server.properties
echo "max-tick-time=60000\r\n" >> server.properties
echo "network-compression-threshold=256\r\n" >> server.properties
echo "max-tick-time=60000\r\n" >> server.properties
echo "max-chained-neighbor-updates=1000000\r\n" >> server.properties
echo "entity-broadcast-range-percentage=100\r\n" >> server.properties
echo "player-idle-timeout=0\r\n" >> server.properties
echo "rate-limit=0\r\n" >> server.properties
echo "log-ips=true\r\n" >> server.properties
echo "text-filtering-config=\r\n" >> server.properties
echo "spawn-monsters=false\r\n" >> server.properties
echo "allow-nether=false\r\n" >> server.properties
echo "allow-end=false\r\n" >> server.properties

# Generate eula.txt file
echo "Generating eula.txt file..."
echo "eula=true" > eula.txt

# Generate ops.json file, set to envvar or default to empty json array
echo "Generating ops.json file..."
echo "[]" > ops.json