#!/bin/bash

read -p "Enter your Azure account email address: " AZURE_ACCOUNT
read -sp "Enter your Azure account password: " AZURE_PASSWORD

export ARM_CLIENT_ID=""
export ARM_CLIENT_SECRET=""
export ARM_SUBSCRIPTION_ID=""
export ARM_TENANT_ID=""

az login --username $AZURE_ACCOUNT --password $AZURE_PASSWORD

if [ $? -ne 0 ]; then
    echo "Azure login failed. Please verify your account email address and password and try again."
    exit 1
fi

ARM_CLIENT_ID=$(az account show --query "user.name" --output tsv)
ARM_SUBSCRIPTION_ID=$(az account show --query "id" --output tsv)
ARM_TENANT_ID=$(az account show --query "tenantId" --output tsv)

if [ -z "$ARM_CLIENT_ID" ] || [ -z "$ARM_SUBSCRIPTION_ID" ] || [ -z "$ARM_TENANT_ID" ]; then
    echo "Failed to retrieve Azure provider credentials. Please verify your account email address and password and try again."
    exit 1
fi

export ARM_CLIENT_ID
export ARM_CLIENT_SECRET=$AZURE_PASSWORD
export ARM_SUBSCRIPTION_ID
export ARM_TENANT_ID

echo "Azure provider credentials successfully configured!"