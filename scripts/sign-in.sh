#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'

curl --include --request POST http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiU2MjJmNTcxOTM3ZGUzYmJmYzA2OTJjMWQ4Y2YxOGFkNwY6BkVG--ddcef383e44f5f65861a25910d4f9ce724f2d008" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "first_name": "Chris",
      "last_name": "Payne",
      "nationality": "USA"
    }
  }'
