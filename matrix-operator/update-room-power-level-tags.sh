#!/bin/bash

source _utils.sh

# Parse input
ROOM_ID="$1"

if [ -z "$ROOM_ID" ]; then
  echo "Usage: $0 <room_id>"
  exit 1
fi

# Configs
DEFAULT_PERMS=$(cat power-level-tags.json | jq -c .)

ROOM_IDENT="!${ROOM_ID}%3A${HOMESERVER}"

PATH="rooms/${ROOM_IDENT}/state/in.cinny.room.power_level_tags"
URI="${API_BASE}/v3/${PATH}"

/usr/bin/curl -X PUT --data "${DEFAULT_PERMS}" -H "${AUTHORIZATION_HEADER}" "$URI"
