curl --include --request GET http://localhost:3000/profiles/5 \
  --header "Authorization: Token token=BAhJIiUwNWNjNGU2MWI4OWFmOWJmYjE4ZWJiOGI2NjlkMzNlNAY6BkVG" \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiVjMGM4YzU0N2VmMGM5MWZkMzUyYmFhMWRkMzEzMmVjNwY6BkVG--bf44a69b7a105d684ab3d335b5fa5efaef5c5234" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "first_name": "B Reezy",
      "last_name": "My Neezy",
      "nationality": "USA",
      "abandons": 23,
      "reports": 12,
      "language": "English",
      "carry":"true",
      "support":"true",
      "offlane":"false"
    }
  }'

curl --include --request PATCH http://localhost:3000/profiles/5 \
  --header "Authorization: Token token=BAhJIiUwNmU2NzUxMTVhNzNhNmI2MWYwY2RiNTY4MmFmZTY4YgY6BkVG--c57d81cba218b7262d60a194ecdff44fb57a1c1c" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "user_id": "6",
      "positions": ["carry","support"]
    }
  }'
