curl --include --request GET http://localhost:3000/profiles/1 \
  --header "Authorization: Token token=BAhJIiU2NzBmMTU3NGJhOTAyOGVhZjgyYTlmMTU2MGYxNWRkMAY6BkVG--6f39b1207b686401b9387643d5abaeac9e9e5268" \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiUzYjk0ZjgwMzQxMzI4OWMzNmY4MmEwMDMzZjQzMjY3MwY6BkVG--9e72b7af0e27cf110798506aeb15e498c211a34d" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "first_name": "Luke",
      "last_name": "Costanza",
      "nationality": "USA"
    }
  }'
