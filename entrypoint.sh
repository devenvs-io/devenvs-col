#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 $6 $7 $8"

# who-to-greet="$1"
# api-key="$2"
# branch="$3"
# actor="$4"
# repo="$5"
# org="$6"
# commit-msg="$7"
# commit-sha="$8"

# Constructing JSON payload
json_payload=$(cat <<EOF
{
  "who-to-greet": "$1",
  "api-key": "$2",
  "branch": "$3",
  "actor": "$4",
  "repo": "$5",
  "org": "$6",
  "commit-msg": "$7",
  "commit-sha": "$8"
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

