#!/bin/bash
# update / put

TOKEN="BAhJIiU5NWU2N2Q3NjRmMjQxZjE4YTEzMDE1N2FkYzkwYWM0OQY6BkVG--680d6c82a6dd94a336d8f86462abb76bab7d15ff"
ID=8
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

# to heroku: https://ski-list.herokuapp.com

  API="${API_ORIGIN:-https://ski-list.herokuapp.com}"
  URL_PATH="/new_items"
  ID=35
  TOKEN="BAhJIiU1NzlmZTAyZjRlYWM4OGFmMTcxODZmMjgzZmIwNTQyMQY6BkVG--ca526f229d6a10114dbc37378beb6d7cc0da0419"
  PARAMETER="new_item"
  NAME_1="name"
  NAME_1_VALUE="not allll the water"

  curl "${API}${URL_PATH}/${ID}" \
    --include \
    --request PATCH \
    --header "Authorization: Token token=${TOKEN}" \
    --header "Content-Type: application/json" \
    --data '{
      "'"${PARAMETER}"'": {
        "'"${NAME_1}"'": "'"${NAME_1_VALUE}"'"
      }
    }'

  echo
