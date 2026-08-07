curl 'https://api.eu-central-1.saucelabs.com/rdc/v2/sessions/{sessionId}/device/openUrl' \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Basic username:password' \
  --data '{
  "url": "https://example.com"
}'
