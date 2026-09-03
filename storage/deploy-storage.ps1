# ================================
# Azure Storage Account Deployment Script
# ================================
# This script creates an Azure Storage Account.
# Update the variables below with your own values.

# Variables
$resourceGroup = "MyResourceGroup"
$location = "eastus"
$storageAccountName = "mystorageacct001"
$sku = "Standard_LRS"   # Options: Standard_LRS, Standard_GRS, Standard_ZRS, Premium_LRS

# Create Resource Group (if not already created)
az group create --name $resourceGroup --location $location

# Create Storage Account
az storage account create `
    --name $storageAccountName `
    --resource-group $resourceGroup `
    --location $location `
    --sku $sku `
    --kind StorageV2

Write-Host "✅ Azure Storage Account deployment complete!"
