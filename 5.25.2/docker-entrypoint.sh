#!/bin/bash

# --------------
# ADD ALL SCRIPT
# --------------
if [ -d /docker-entrypoint.d ]; then
    for f in /docker-entrypoint.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

echo "Running $@"
exec "$@"
