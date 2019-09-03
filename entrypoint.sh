#!/bin/sh -l

echo "Triggered by $1"

url="https://circleci.com/api/v1.1/project/github/nodes-projects/documentation/tree/develop?circle-token=$2"
trigger=$1

curl -X POST \
  $url \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  -H 'Host: circleci.com' \
  -H 'cache-control: no-cache' \
  -d '{
	"build_parameters": {
		"TRIGGERED_BY": "$trigger",
		"CIRCLE_JOB": "build"
	}
}' -v
