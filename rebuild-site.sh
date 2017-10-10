#!/bin/bash
body='{
"request": {
"branch":"master"
}}'

curl -s -X POST \
   -H "Content-Type: application/json" \
   -H "Accept: application/json" \
   -H "Travis-API-Version: 3" \
   -H "Authorization: $GITHUB_TOKEN" \
   -d "$body" \
   https://api.travis-ci.org/repo/triplestrange%2Ftriplestrange.github.io/requests
