#!/bin/sh -l

echo "hello $1"
echo curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET https://api.lyrics.ovh/v1/Coldplay/Adventure+of+a+Lifetime
