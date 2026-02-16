#!/bin/bash
# Send a text letter to Gabe Newell asking about Half-Life 3

curl -s -X POST https://www.mailclaw.xyz/api/v1/jobs \
  -H "Content-Type: application/json" \
  -d '{
    "email": "impatient_gamer@example.com",
    "to": {
      "name": "Gabe Newell",
      "address_line1": "10400 NE 4th St",
      "address_city": "Bellevue",
      "address_state": "WA",
      "address_zip": "98004"
    },
    "from": {
      "name": "Everyone",
      "address_line1": "1 Internet Blvd",
      "address_city": "The World",
      "address_state": "CA",
      "address_zip": "90210"
    },
    "content": {
      "text": "Dear Gabe,\n\nIt has been 19 years since Half-Life 2. We have waited patiently. We have waited impatiently. We have made memes. We have counted to 2 and stopped.\n\nPlease, just one word. Yes or no. Is it coming?\n\nWe will accept a response via certified mail.\n\nSincerely,\nEveryone on the Internet"
    },
    "service": "certified"
  }' | jq .
