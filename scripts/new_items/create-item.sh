#!/bin/bash

TOKEN="BAhJIiU5NWU2N2Q3NjRmMjQxZjE4YTEzMDE1N2FkYzkwYWM0OQY6BkVG--680d6c82a6dd94a336d8f86462abb76bab7d15ff"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "new_item": {
      "name": "practice"
    }
  }'

  echo

# to heroku: https://ski-list.herokuapp.com
TOKEN="BAhJIiU1NzlmZTAyZjRlYWM4OGFmMTcxODZmMjgzZmIwNTQyMQY6BkVG--ca526f229d6a10114dbc37378beb6d7cc0da0419"
API="${API_ORIGIN:-https://ski-list.herokuapp.com}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "new_item": {
      "name": "practice"
    }
  }'

  echo

# to heroku: items - doesn't work (422 Unprocessable Entity)
  TOKEN="BAhJIiU1NzlmZTAyZjRlYWM4OGFmMTcxODZmMjgzZmIwNTQyMQY6BkVG--ca526f229d6a10114dbc37378beb6d7cc0da0419"
  API="${API_ORIGIN:-https://ski-list.herokuapp.com}"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "item": {
        "item_name": "practice"
      }
    }'

    echo
  # curl --include --request POST http://localhost:4741/new_items \
  #   --header "Content-Type: application/json" \
  #   --data '{
  #     "item": {
  #       "name": "gloves",
  #       "user_id": "1",
  #       "created_at": "2017-04-27 16:50:06.865466",
  #       "updated_at": "2017-04-27 16:50:06.865466"
  #     }
  #   }'
