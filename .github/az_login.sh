credentials="$AZURE_CREDENTIALS"
username=$(echo "$credentials" | python -c "import sys, json; print(json.load(sys.stdin)['clientId'])")
password=$(echo "$credentials" | python -c "import sys, json; print(json.load(sys.stdin)['clientSecret'])")
tenant=$(echo "$credentials" | python -c "import sys, json; print(json.load(sys.stdin)['tenantId'])")

az login --service-principal --username "$username" --password "$password" --tenant "$tenant" > /dev/null
