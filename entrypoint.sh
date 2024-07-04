#!/bin/bash

echo "Please do not change the envvars after the first launch, as it will not be reflected in the server.properties file."

echo "======================"
echo "Current configuration:"
echo $(cat server.properties)
echo "======================"

RAM=${RAM:-1024M}
java -Xmx$RAM -Xms$RAM -jar paper-server_1.12.2.jar nogui