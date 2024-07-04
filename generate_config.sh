#!/bin/bash

# Generate server.properties file

# Set default values
echo "Generating server.properties file..."
# set port to envvar PORT or default to 25565
echo "server.port=25565" > server.properties
echo "motd=Logiscool Tábor szerver" >> server.properties
echo "server-ip=" >> server.properties
printf 'max-players=%s\n' "$MAXPLAYERS" >> server.properties
printf 'online-mode=%s\n' "$ONLINEMODE" >> server.properties
echo "gamemode=1" >> server.properties
echo "allow-flight=true" >> server.properties
echo "enable-command-block=false" >> server.properties
echo "white-list=false" >> server.properties
echo "pvp=false" >> server.properties
echo "spawn-npcs=false" >> server.properties
echo "spawn-animals=false" >> server.properties
echo "generate-structures=false" >> server.properties
echo "force-gamemode=true" >> server.properties
echo "hardcore=false" >> server.properties
echo "level-name=world" >> server.properties
echo "difficulty=peaceful" >> server.properties
echo "op-permission-level=4" >> server.properties
echo "function-permission-level=2" >> server.properties
echo "view-distance=10" >> server.properties
echo "max-world-size=29999984" >> server.properties
echo "spawn-protection=0" >> server.properties
echo "resource-pack=" >> server.properties
echo "resource-pack-sha1=" >> server.properties
echo "require-resource-pack=false" >> server.properties
echo "broadcast-console-to-ops=true" >> server.properties
echo "enable-rcon=false" >> server.properties
echo "rcon.password=" >> server.properties
echo "rcon.port=25575" >> server.properties
echo "broadcast-rcon-to-ops=true" >> server.properties
echo "enable-query=true" >> server.properties
echo "enable-jmx-monitoring=false" >> server.properties
echo "enable-status=true" >> server.properties
echo "sync-chunk-writes=true" >> server.properties
echo "enable-advancements=false" >> server.properties
echo "max-tick-time=60000" >> server.properties
echo "network-compression-threshold=256" >> server.properties
echo "max-tick-time=60000" >> server.properties
echo "max-chained-neighbor-updates=1000000" >> server.properties
echo "entity-broadcast-range-percentage=100" >> server.properties
echo "player-idle-timeout=0" >> server.properties
echo "rate-limit=0" >> server.properties
echo "log-ips=true" >> server.properties
echo "text-filtering-config=" >> server.properties
echo "spawn-monsters=false" >> server.properties
echo "allow-nether=false" >> server.properties
echo "allow-end=false" >> server.properties

# Generate eula.txt file
echo "Generating eula.txt file..."
echo "eula=true" > eula.txt

# Generate ops.json file, set to envvar or default to empty json array
echo "Generating ops.json file..."
echo "[]" > ops.json