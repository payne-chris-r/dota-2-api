#!/bin/bash

curl --include --request GET http://localhost:3000/players \
  --header "Authorization: Token token=BAhJIiVhNzQ5NzQyOGNlOGFmYmUwYjk4MjdiMzYyYmQ0NmI0YgY6BkVG--592186c5e3ef3aa9033c2d719e1f8b941b7eaede" \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/players \
  --header "Authorization: Token token=BAhJIiUzYjk0ZjgwMzQxMzI4OWMzNmY4MmEwMDMzZjQzMjY3MwY6BkVG--9e72b7af0e27cf110798506aeb15e498c211a34d" \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "game_id": 3,
      "profile_id": 10,
      "character_id": 3
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
