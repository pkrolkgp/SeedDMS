#!/bin/bash

CONTAINER_ALREADY_STARTED="CONTAINER_ALREADY_STARTED_PLACEHOLDER"
if [ ! -e $CONTAINER_ALREADY_STARTED ]; then
    touch $CONTAINER_ALREADY_STARTED
    echo "-- First container startup --"
    mkdir -p /home/data/ && \
    mkdir -p  /home/data/staging/ && \
    mkdir -p  /home/data/lucene/ && \
    mkdir -p /home/data/cache/ && \
    mkdir -p /home/data/backup/ && \
    mkdir -p /home/data/dane/ && \
    chown www-data:www-data /home/data/ -R && \
    chown www-data:www-data /var/www/ -R && \
    touch /var/www/seeddms60x/conf/ENABLE_INSTALL_TOOL 
else
    echo "-- Not first container startup --"
fi
