#!/bin/bash

TOKEN="BAhJIiU1Yjg3ZTE2N2JjYmM1OWM1MzFjZDhiZDY5NDkxOGNkZQY6BkVG--5a0ddcefbd32d886368b1f74dd9b77faa90b7ebe"
ID=2
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "new_item": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "new_item": {
      "name": "gloves"
    }
  }'
