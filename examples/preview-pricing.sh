#!/bin/bash
# Preview page count and pricing before committing to a job

curl -s -X POST https://www.mailclaw.xyz/api/v1/preview \
  -H "Content-Type: application/json" \
  -d '{
    "content": {
      "text": "Dear Gabe, just checking in. Still waiting. Thanks."
    },
    "service": "first_class"
  }' | jq .
