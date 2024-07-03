#!/bin/bash

RAM=${RAM:-1024}
java -Xmx$RAM -Xms$RAM -jar paper-server_1.12.2.jar nogui