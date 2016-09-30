#!/bin/bash

curl --include --request GET http://localhost:3000/games

# join game
curl --include --request POST http://localhost:3000/games \
  --header "Authorization: Token token=BAhJIiU0ZDRkMDQwZGI2YWExNWE4ZDNjZmE3ODMzMjJhZGYyNgY6BkVG--9034fa845eafa9ba0b5bfb13d503fcd580f15e0c" \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "duration": 2,
      "skill_bracket": 2,
      "game_type": 2
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
