#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "yo",
      "password": "yo"
    }
  }'

curl --include --request PATCH http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiUwOWI2NTFmZWQyYjc0ZWFiNGM1NzM0MmY4OTU0OGM2OAY6BkVG--a9a081dd7d2d0c4881d829703054840f6cb3ad51" \
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
      "email": "another@example.email",
      "password": "an example password"
    }
  }'
