#!/usr/local/bin/bash

RG_NAME=rg-talk-to-me
LOCATION=eastus
SERVICE_NAME=talk-to-me

# run checks
[ -z "$RG_NAME" ] && echo 'var RG_NAME cannot be empty, exiting...' && exit 1
[ -z "$LOCATION" ] && echo 'var LOCATION cannot be empty, exiting...' && exit 1
[ -z "$SERVICE_NAME" ] && echo 'var SERVICE_NAME cannot be empty, exiting...' && exit 1


function _exists() {
	if (hash "$@" 2>/dev/null); then
		return 0
	else
		return 1
	fi
}
# make sure az is installed
_exists az
az login

# Create a resource group for your Speech resource
az group create \
    --location "$LOCATION" \
    --name "$RG_NAME"

# Create a Speech resource in the resource group.
az cognitiveservices account create \
    --kind SpeechServices \
    --location "$LOCATION" \
    --name "$SERVICE_NAME" \
    --resource-group "$RG_NAME" \
    --sku F0

# Use the command to get the key values for the new Speech resource.
az cognitiveservices account keys list \
    --name "$SERVICE_NAME" \
    --resource-group "$RG_NAME" \
    --output table

az cognitiveservices account keys list \
    --name "$SERVICE_NAME" \
    --resource-group "$RG_NAME" \
    --output table > .secrets

echo "starting the app"
npm start

echo "goto"
echo "http://localhost:3000"

sleep 5

echo "Paste your Speech key into the highlighted text box."
cat .secrets

printf '

Select one of the three buttons to begin the conversion to the audio format:

  (1)  Get directly from Azure - client-side call to Azure
  (2)  Audio control for audio from file
  (3)  Audio control for audio from buffer
'
