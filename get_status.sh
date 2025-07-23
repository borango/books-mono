echo "Waiting for preview to complete..."
while true; do
  sleep 5  # wait immediately after pushing and before next itaration
  STATUS=$(curl -s https://leanpub.com/eco-travel/job_status.json?api_key=225BD9FEE6634FFDB6875DC5CA7B804C | jq)
  if [ "$STATUS" = "{}" ]; then # empty JSON body means success
    echo "Preview build completed."
    break
  fi
  echo "Status: $STATUS"
done

