#!/bin/bash

# Vérifie le statut du conteneur passé en paramètre
RETURN=$(docker ps -q -f name=$1 -f status=running | wc -l)

# Si le statut est down, on renvoi un code retour 1
if [ $RETURN -lt 1 ]; then
    exit 1
else
    exit 0
fi
