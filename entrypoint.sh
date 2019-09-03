#!/bin/sh -l

trigger=$1
key=$2
url="https://circleci.com/api/v1.1/project/github/nodes-projects/documentation/tree/develop?circle-token=$key"
payload="{\"build_parameters\": {\"TRIGGERED_BY\": \"$trigger\",\"CIRCLE_JOB\": \"build\"}}"

echo $(generate_post_data)
echo $url

curl -X POST \
  $url \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  -H 'Host: circleci.com' \
  -H 'cache-control: no-cache' \
  -d "$payload" -vv
