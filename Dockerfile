# Use a base image with Java and Minecraft server
FROM openjdk:8-jre-alpine

# Install necessary packages
RUN apk update && apk add --no-cache bash

# Copy the server files to the container
COPY generate_config.sh /server
COPY paper-server_1.12.2.jar /server
COPY plugins /server/plugins
COPY server-icon.png /server/server-icon.png

# Copy the generate_config.sh script to the container
COPY generate_config.sh /server/generate_config.sh

# Set the working directory
WORKDIR /server

# Run the generate_config.sh script to generate the server configuration
RUN chmod +x generate_config.sh && ./generate_config.sh

# Expose the Minecraft server port
EXPOSE $PORT

RUN echo "Please do not change ENVVARS after the first run. If you need to change them, please delete the container and create a new one."

# Start the Minecraft server with the specified RAM as entrypoint
ENTRYPOINT java -Xmx$RAM -Xms$RAM -jar paper-server_1.12.2.jar nogui