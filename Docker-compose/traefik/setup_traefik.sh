#!/bin/bash

# Create base directory
mkdir -p /mnt/data || { echo "Failed to create /mnt/data"; exit 1; }

# Create Traefik directory
mkdir -p /mnt/data/traefik || { echo "Failed to create /mnt/data/traefik"; exit 1; }

# Create the acme.json file
touch /mnt/data/traefik/acme.json || { echo "Failed to create acme.json"; exit 1; }

# Set proper permissions for acme.json
chmod 600 /mnt/data/traefik/acme.json || { echo "Failed to set permissions on acme.json"; exit 1; }

# Confirmation message
echo "Directories and files successfully created and permissions set."
