#!/bin/bash

docker run \
    -p 8856:80 \
    -e UPDATES=enabled \
    -v openstreetmap-data:/var/lib/postgresql/10/main \
    -d overv/openstreetmap-tile-server \
    run --restart unless-stopped
