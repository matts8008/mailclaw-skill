#!/bin/bash
# Check the status of a job by ID

JOB_ID="${1:-job_hl3_when}"

curl -s "https://www.mailclaw.xyz/api/v1/jobs/$JOB_ID" | jq .
