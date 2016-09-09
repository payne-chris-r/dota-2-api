curl --include --request GET http://localhost:3000/profiles/1 \
  --header "Authorization: Token token=BAhJIiU2NzBmMTU3NGJhOTAyOGVhZjgyYTlmMTU2MGYxNWRkMAY6BkVG--6f39b1207b686401b9387643d5abaeac9e9e5268" \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiUwOWI2NTFmZWQyYjc0ZWFiNGM1NzM0MmY4OTU0OGM2OAY6BkVG--a9a081dd7d2d0c4881d829703054840f6cb3ad51" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "first_name": "Steve",
      "last_name": "Brian",
      "nationality": "USA"
    }
  }'
