curl --include --request GET http://localhost:3000/profiles/2 \
  --header "Authorization: Token token=BAhJIiU1OTI5OTM0M2FlZTM4MDYwNjk5MzdiM2E3NDY1MjEwYgY6BkVG--70fc183c3a628cd81136bd48042f7f94e21cb03b" \
  --header "Content-Type: application/json"

curl --include --request POST http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiVlY2M5YjliZWE1YTVlYTJiMmRkOTVhY2UyY2NkYTQzYgY6BkVG--4ca61875fb0fab02ca57079115109749cb89b645" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "first_name": "Yo",
      "last_name": "Yo",
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
