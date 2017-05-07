
TOKEN="BAhJIiVjZTgxY2Q3ODQ2ZDM3N2NhNWIzNGZiNTI4Y2JkZmIwZAY6BkVG--340754fd618d81e239acb2b6810d55c876d12583"
ID=7
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo

# to heroku: https://ski-list.herokuapp.com
TOKEN="BAhJIiU1NzlmZTAyZjRlYWM4OGFmMTcxODZmMjgzZmIwNTQyMQY6BkVG--ca526f229d6a10114dbc37378beb6d7cc0da0419"
ID=29
API="${API_ORIGIN:-https://ski-list.herokuapp.com}"
URL_PATH="/new_items"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo
