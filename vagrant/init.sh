#!/bin/bash

#first we import the vagrant boxes
BOXES_PATH="./boxes"

if [ ! -d "$BOXES_PATH" ]; then
    echo "Error: Boxes directory not found at ${BOXES_PATH}"
    exit 1
fi

echo "Adding boxes from: ${BOXES_PATH}"

# Add each box to Vagrant
vagrant box add --name frontend_server "${BOXES_PATH}/machine_1.box" --force
vagrant box add --name control_server "${BOXES_PATH}/machine_4.box" --force
vagrant box add --name backend_server "${BOXES_PATH}/machine_2.box" --force
vagrant box add --name database_server "${BOXES_PATH}/machine_3.box" --force
echo "All boxes have been added successfully!"

echo "Setting permissions on the network setup file"

chmod chmod 777 ./ansible/scripts/network_setup.sh

echo "Permissions set"

