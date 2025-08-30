echo "Waiting for preview to complete..."
while true; do
  sleep 5  # wait immediately after requesting a job, and before next iteration (otherwise the response may reflect the previous job)
  STATUS=$(curl -s https://leanpub.com/$(./get_slug_from_branch.sh)/job_status.json?api_key=$LEANPUB_API_KEY | jq)
  
  NUM=$(echo "$STATUS" | jq -r '.num // "?"')
  TOTAL=$(echo "$STATUS" | jq -r '.total // "?"')
  STATUS_TEXT=$(echo "$STATUS" | jq -r '.status // "no status"')
  MESSAGE=$(echo "$STATUS" | jq -r '.message // "no message"')

  echo "step $NUM of $TOTAL: $STATUS_TEXT ($MESSAGE)"

  if [ "$STATUS" = "{}" ] || [ "$STATUS_TEXT" = "complete" ]; then
    echo "Preview build completed successfully."
    exit 0
  elif [ "$STATUS_TEXT" = "failed" ]; then
    exit 1
  fi
done

