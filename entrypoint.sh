#!/bin/sh -l

echo "Triggered by $1"

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET https://api.lyrics.ovh/v1/Coldplay/Adventure+of+a+Lifetime
