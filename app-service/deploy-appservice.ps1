# ================================
# Azure App Service Deployment Script
# ================================
# This script creates an Azure App Service Plan and Web App.
# Update the variables below with your own values.

# Variables
$resourceGroup = "MyResourceGroup"
$location = "eastus"
$appServicePlan = "MyAppServicePlan"
$sku = "F1"   # Options: F1 (Free), B1 (Basic), S1 (Standard), P1V2 (Premium)
$webAppName = "my-webapp-001"   # Must be globally unique

# Create Resource Group (if not already created)
az group create --name $resourceGroup --location $location

# Create App Service Plan
az appservice plan create `
    --name $appServicePlan `
    --resource-group $resourceGroup `
    --location $location `
    --sku $sku

# Create Web App
az webapp create `
    --name $webAppName `
    --resource-group $resourceGroup `
    --plan $appServicePlan

Write-Host "✅ Azure App Service deployment complete!"
