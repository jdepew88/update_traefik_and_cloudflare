#!/bin/bash

# Create a Docker network for Traefik
echo "Creating Docker network 'traefik'..."
docker network create traefik

# Create the Traefik folder in appdata
echo "Creating Traefik folder in appdata..."
mkdir -p /mnt/user/appdata/traefik

# Create the acme.json file and apply the correct permissions
echo "Creating acme.json file and setting permissions..."
touch /mnt/user/appdata/traefik/acme.json
chmod 600 /mnt/user/appdata/traefik/acme.json

echo "Traefik initial setup completed."

echo "Credit: This script is based on instructions from IBRACORP. For more details, visit: https://docs.ibracorp.io/traefik/master/unraid"
