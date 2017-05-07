#!/bin/bash

# EMAIL=a@m.com PASSWORD=ddd sh scripts/sign-in.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

# copy into terminal:
#
#
#

# copy into terminal, to heroku: https://ski-list.herokuapp.com

# EMAIL=a@m.com PASSWORD=ddd sh scripts/sign-in.sh
API="${API_ORIGIN:-https://ski-list.herokuapp.com}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"test-post"'",
      "password": "'"ttt"'"
    }
  }'

  echo
