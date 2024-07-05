# Use a base image with Java and Minecraft server
FROM alpine:3.20.1

# Install necessary packages
RUN apk update
RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN apk add --no-cache openjdk11-jre

# Create the server directory
RUN mkdir /server

# Copy the server files to the container
COPY generate_config.sh /server
COPY entrypoint.sh /server
COPY paper-server_1.12.2.jar /server
COPY plugins /server/plugins
COPY server-icon.png /server/server-icon.png
COPY commands.yml /server/commands.yml

# Check if the file exists
RUN test -e /server/entrypoint.sh || git clone https://github.com/shie1/logiscool-minecraft /server

# Set the working directory
WORKDIR /server

RUN chmod +x /server/entrypoint.sh

# Run the generate_config.sh script to generate the server configuration
RUN chmod +x generate_config.sh && ./generate_config.sh

# Expose the Minecraft server port
EXPOSE 25565

# Start the Minecraft server with the specified RAM as entrypoint
ENTRYPOINT ["/server/entrypoint.sh"]