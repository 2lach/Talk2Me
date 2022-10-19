RG_NAME=tutorial-resource-group-eastus
LOCATION=eastus
SERVICE_NAME=tutorial-speech

# Create a resource group for your Speech resource
az group create \
    --location $LOCATION \
    --name $RG_NAME

# Create a Speech resource in the resource group.
az cognitiveservices account create \
    --kind SpeechServices \
    --location $LOCATION \
    --name $SERVICE_NAME \
    --resource-group $RG_NAME \
    --sku F0

# Use the command to get the key values for the new Speech resource.
az cognitiveservices account keys list \
    --name $SERVICE_NAME \
    --resource-group $RG_NAME \
    --output table

az cognitiveservices account keys list \
    --name $SERVICE_NAME \
    --resource-group $RG_NAME \
    --output table > .secrets

echo "starting the app"
yarn start

echo "goto"
echo "http://localhost:3000"

sleep 5

echo "Paste your Speech key into the highlighted text box."
cat .secrets

echo '
Select one of the three buttons to begin the conversion to the audio format:

        Get directly from Azure - client-side call to Azure
        Audio control for audio from file
        Audio control for audio from buffer
'