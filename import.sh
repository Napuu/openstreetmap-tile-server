#!/bin/bash
docker run \
    -v /home/lokki/projects/osm-tile-server-data/finland-latest.osm.pbf:/data.osm.pbf \
    -v /home/lokki/projects/osm-tile-server-data/finland-latest.poly:/data.poly \
    -v openstreetmap-data:/var/lib/postgresql/10/main \
    overv/openstreetmap-tile-server \
    import
