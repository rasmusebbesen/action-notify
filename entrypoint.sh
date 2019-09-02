#!/bin/sh -l

echo "Triggered by $1"

curl -X POST \
  'https://circleci.com/api/v1.1/project/github/nodes-projects/documentation/tree/develop?circle-token=$2' \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  -H 'Host: circleci.com' \
  -H 'cache-control: no-cache' \
  -d '{
	"build_parameters": {
		"TRIGGERED_BY": "$1",
		"CIRCLE_JOB": "build"
	}
}' -v
