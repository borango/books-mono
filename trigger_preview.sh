if [[ $1 =~ ^[sS] ]]; then
  scope_part="/subset"
  scope_text="subset"
else
  scope_part=""
  scope_text="full"
fi

echo "Triggering a $scope_text Preview"


curl -s -d "api_key=$LEANPUB_API_KEY" https://leanpub.com/$(./get_slug_from_branch.sh)/preview$scope_part.json > /dev/null

./status_and_download.sh $scope_text
