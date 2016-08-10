#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'

curl --include --request PATCH http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiU3N2FlOTM4Nzc0YTVlY2YzYzdlNGI4NmM2YzE5OWQxYQY6BkVG--2ebf23c4e5eb840cfa1335d335d3e3f414164313" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "first_name": "Steve",
      "last_name": "Brian",
      "nationality": "USA"
    }
  }'

  curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "an@example.email",
        "password": "an example password"
      }
    }'
