#!/bin/bash

curl --include --request GET http://localhost:3000/characters

# join game
curl --include --request POST http://localhost:3000/characters \
  --header "Authorization: Token token=BAhJIiUwOWI2NTFmZWQyYjc0ZWFiNGM1NzM0MmY4OTU0OGM2OAY6BkVG--a9a081dd7d2d0c4881d829703054840f6cb3ad51" \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "game_id": 3,
      "character_id": 3
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
