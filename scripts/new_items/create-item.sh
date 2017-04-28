#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "name": "gloves",
      "user_id": "1"
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

#
# doesn't work
# API="${API_ORIGIN:-https://ski-list.herokuapp.com}"
# URL_PATH="/examples"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=c6d89dae051cdda23e2b868028b505e5cb45fde6e3db97d20b6ce12acde73ab444da78f41ff39658625a314b59e0799e17c8631a77642d8148bd7cc5eae8dd2a" \
#   --data '{
#     "example": {
#       "text": "test test example example"
#     }
#   }'

#
# doesn't work
# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/examples"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=c6d89dae051cdda23e2b868028b505e5cb45fde6e3db97d20b6ce12acde73ab444da78f41ff39658625a314b59e0799e17c8631a77642d8148bd7cc5eae8dd2a" \
#   --data '{
#     "example": {
#       "text": "test test example example"
#     }
#   }'
