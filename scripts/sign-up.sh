#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
  z  }
  }'

echo

# API="${API_ORIGIN:-https://ski-list.herokuapp.com}"

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/sign-up"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "'"b"'",
#       "password": "'"bbb"'",
#       "password_confirmation": "'"bbb"'"
#     }
#   }'
