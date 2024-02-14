#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 $6 $7"

# Constructing JSON payload
json_payload=$(cat <<EOF
{
  "api-key": "$1",
  "branch": "$2",
  "actor": "$3",
  "repo": "$4",
  "org": "$5",
  "commit-msg": "$6",
  "commit-sha": "$7"
}
EOF
)

# API endpoint URL
api_url="YOUR_API_ENDPOINT"
echo "******"
echo $json_payload

# Using curl to send a POST request with the JSON payload
# curl -X POST "$api_url" \
#      -H "Content-Type: application/json" \
#      -H "Authorization: Bearer $api_key" \
#      -d "$json_payload"

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

