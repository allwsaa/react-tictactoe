#!/bin/bash

URL="http://localhost:3000"

LOG_FILE="monitor.log"

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

echo "$(date): Status Code - $STATUS_CODE" >> $LOG_FILE
