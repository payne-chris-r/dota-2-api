#!/bin/bash

curl --include --request GET http://localhost:3000/players \
  --header "Authorization: Token token=BAhJIiVhNzQ5NzQyOGNlOGFmYmUwYjk4MjdiMzYyYmQ0NmI0YgY6BkVG--592186c5e3ef3aa9033c2d719e1f8b941b7eaede" \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/players \
  --header "Authorization: Token token=BAhJIiU1OGRkYzRhNmExNjYyOTViNzgwMGE2MWNhZjc3MTZkNgY6BkVG--cbbb8eec0f3f16dd491be3b72bbeffefbe37a5d3" \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "game_id": 1,
      "profile_id": 2,
      "character_id": 4
    }
  }'

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "another@example.email",
      "password": "an example password"
    }
  }'
