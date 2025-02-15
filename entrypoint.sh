#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 '$6' $7 $8 $9"
# echo "Hello from the 2nd echo statement!"

# Constructing JSON payload
json_payload=$(cat <<EOF
{
  "branch": "$2",
  "actor": "$3",
  "repo": "$4",
  "org": "$5",
  "commitMsg": "$6",
  "commitSha": "$7",
  "image" : "$8",
  "api-url" : "$9"
}
EOF
)

# API endpoint URL
api_url="$9"
echo "******"
echo $json_payload
# echo "Hi, I am here for debugging purpose!"

# curl --location "$9" \
# --header "Authorization: Bearer $1" \
# --header 'Content-Type: application/json' \
# --data "$json_payload"

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
# echo "Hello we're about to hit the post request!"
curl -X POST "$api_url" \
        -H "Content-Type: application/json" \
        -H "x-api-key: $1" \
        -d "$json_payload" 
# echo "We have hit the post request!"

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
