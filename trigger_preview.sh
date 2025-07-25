if [[ $1 =~ ^[sS] ]]; then
  scope_part="/subset"
  scope_text="subset"
else
  scope_part=""
  scope_text="full"
fi

echo "Triggering a $scope_text Preview"


curl -s -d "api_key=225BD9FEE6634FFDB6875DC5CA7B804C" https://leanpub.com/eco-travel/preview$scope_part.json > /dev/null

./status_and_download.sh
