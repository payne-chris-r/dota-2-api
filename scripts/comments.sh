#!/bin/bash

curl --include --request GET http://localhost:3000/games

# join game
curl --include --request POST http://localhost:3000/games \
  --header "Authorization: Token token=BAhJIiU1MGUxMTllZjk5ZGU0NzYwNWJjNGY2MTU0OTI2YmQzMAY6BkVG--74c71996fd51ffa35830654cd13d90f1074799ea" \
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
