#!/bin/bash
cd /home/container || echo "Failed to change directory, missing /home/container or user?" && exit 1

java -version

MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

exec $MODIFIED_STARTUP
