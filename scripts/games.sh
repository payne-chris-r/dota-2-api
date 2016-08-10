#!/bin/bash

curl --include --request GET http://localhost:3000/games

# join game
curl --include --request POST http://localhost:3000/players \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "game_id": 3,
      "profile_id": 2,
      "character_id": 1
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
