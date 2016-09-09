#!/bin/bash

curl --include --request POST http://localhost:3000/admins \
  --header "Authorization: Token token=BAhJIiUxNjc4MzZmMGY3MjA3YjdjYjI5ZjdlYjE5ZTA0ODhhYQY6BkVG--77f07f0d23b1d2de33d872e9cf877c78b3d1189e" \
  --header "Content-Type: application/json" \
  --data '{
    "admin": {
      "user_id": 1
    }
  }'

curl --include --request PATCH http://localhost:3000/admins/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "another@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
