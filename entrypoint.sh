#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 $6 $7 $8 $9"

# Constructing JSON payload
json_payload=$(cat <<EOF
{
  "branch": "$2",
  "actor": "$3",
  "repo": "$4",
  "org": "$5",
  "commit-msg": "$6",
  "commit-sha": "$7",
  "image" : "$8",
  "api-url" : "$9"
}
EOF
)

# API endpoint URL
api_url="$9"
echo "******"
echo $json_payload


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
curl --location "https://14bf-113-193-219-183.ngrok-free.app" \

curl -X POST "https://ddc0-113-193-219-183.ngrok-free.app/store-data" \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $1" \
        -d '{
          "branch": "${{ github.ref_name }}",
          "actor": "${{ github.actor }}",
          "repo": "${{ github.repository }}",
          "org": "${{ github.repository_owner }}",
          "commitMsg": "${{ github.event.head_commit.message }}",
          "commitSha": "${{ github.sha }}",
          "image": "devarsh10/productcatalogservice:${{ env.IMAGE_TAG }}"
        }'

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

