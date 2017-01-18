#!/usr/bin/with-contenv bash

PUID=${PUID:-911}
PGID=${PGID:-911}

groupmod -o -g "$PGID" lineage
usermod -o -u "$PUID" lineage
chown -R lineage:lineage /opt/lineage
