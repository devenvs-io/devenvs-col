#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 $6 $7 $8"

# Constructing JSON payload
json_payload=$(cat <<EOF
{
  "branch": "$2",
  "actor": "$3",
  "repo": "$4",
  "org": "$5",
  "commit-msg": "$6",
  "commit-sha": "$7",
  "image" : "$8"
}
EOF
)

# API endpoint URL
api_url="YOUR_API_ENDPOINT"
echo "******"
echo $json_payload


curl --location 'https://platform-backend.devenvs.xyz/api/v1/webhooks/github_actions/' \
--header "Authorization: Bearer $1" \
--header 'Content-Type: application/json' \
--data "$json_payload"

# '{
#     "branch": "main",
#     "actor": "budtendr",
#     "repo": "devenvs-io/action-tester",
#     "org": "devenvs-io",
#     "commit-msg": "update def",
#     "commit-sha": "0b457babac2d208bfe8b2111874e099cef1f52f1",
#     "image": "snk0202/test:v1"
# }'


# Using curl to send a POST request with the JSON payload
# curl -X POST "$api_url" \
#      -H "Content-Type: application/json" \
#      -H "Authorization: Bearer $api_key" \
#      -d "$json_payload"

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

