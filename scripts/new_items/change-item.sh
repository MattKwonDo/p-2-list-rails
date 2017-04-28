#!/bin/bash
# update / put

TOKEN="BAhJIiVjZTgxY2Q3ODQ2ZDM3N2NhNWIzNGZiNTI4Y2JkZmIwZAY6BkVG--340754fd618d81e239acb2b6810d55c876d12583"
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
      "name": "skis_update"
    }
  }'

echo
