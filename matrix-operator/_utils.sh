HOMESERVER="chat.techwerkers.nl"
API_BASE="https://${HOMESERVER}/_matrix/client"

# Parse pre-reqs
if [ -z "$API_TOKEN" ]; then
  echo "API_TOKEN environment variable is not set. Please set it to your API token."
  exit 1
fi
AUTHORIZATION_HEADER="Authorization: Bearer ${API_TOKEN}"
