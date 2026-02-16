#!/bin/bash
# Send a PDF letter — base64-encode your PDF and pass it as content.pdf

PDF_BASE64=$(base64 -w 0 your-document.pdf)

curl -s -X POST https://www.mailclaw.xyz/api/v1/jobs \
  -H "Content-Type: application/json" \
  -d "{
    \"email\": \"you@example.com\",
    \"to\": {
      \"name\": \"Gabe Newell\",
      \"address_line1\": \"10400 NE 4th St\",
      \"address_city\": \"Bellevue\",
      \"address_state\": \"WA\",
      \"address_zip\": \"98004\"
    },
    \"from\": {
      \"name\": \"A Concerned Citizen\",
      \"address_line1\": \"742 Evergreen Terrace\",
      \"address_city\": \"Springfield\",
      \"address_state\": \"IL\",
      \"address_zip\": \"62704\"
    },
    \"content\": { \"pdf\": \"$PDF_BASE64\" },
    \"service\": \"certified_return_receipt\"
  }" | jq .
