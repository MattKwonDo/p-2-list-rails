#!/bin/bash

# TOKEN="BAhJIiVjZTgxY2Q3ODQ2ZDM3N2NhNWIzNGZiNTI4Y2JkZmIwZAY6BkVG--340754fd618d81e239acb2b6810d55c876d12583"
#
# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/new_items"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET \
#   --header "Authorization: Token token=$TOKEN"

# echo

# need to pass id and the token
TOKEN="BAhJIiVjZTgxY2Q3ODQ2ZDM3N2NhNWIzNGZiNTI4Y2JkZmIwZAY6BkVG--340754fd618d81e239acb2b6810d55c876d12583"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users/2"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"


  TOKEN="BAhJIiVjZTgxY2Q3ODQ2ZDM3N2NhNWIzNGZiNTI4Y2JkZmIwZAY6BkVG--340754fd618d81e239acb2b6810d55c876d12583"
 curl --include --request GET http://localhost:4741/new_items \
   --header "Authorization: Token token=$TOKEN"
