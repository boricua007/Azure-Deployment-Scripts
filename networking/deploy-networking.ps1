# ================================
# Azure Networking Deployment Script
# ================================
# This script creates a Virtual Network (VNet) and a Network Security Group (NSG).
# Update the variables below with your own values.

# Variables
$resourceGroup = "MyResourceGroup"
$location = "eastus"
$vnetName = "MyVNet"
$subnetName = "MySubnet"
$nsgName = "MyNSG"
$addressPrefix = "10.0.0.0/16"
$subnetPrefix = "10.0.1.0/24"

# Create Resource Group (if not already created)
az group create --name $resourceGroup --location $location

# Create Virtual Network
az network vnet create `
    --name $vnetName `
    --resource-group $resourceGroup `
    --location $location `
    --address-prefix $addressPrefix `
    --subnet-name $subnetName `
    --subnet-prefix $subnetPrefix

# Create Network Security Group
az network nsg create `
    --resource-group $resourceGroup `
    --name $nsgName `
    --location $location

# Add inbound rule to allow HTTP traffic (example)
az network nsg rule create `
    --resource-group $resourceGroup `
    --nsg-name $nsgName `
    --name AllowHTTP `
    --protocol Tcp `
    --direction Inbound `
    --priority 100 `
    --source-address-prefixes '*' `
    --source-port-ranges '*' `
    --destination-address-prefixes '*' `
    --destination-port-ranges 80 `
    --access Allow

Write-Host "✅ Azure Networking deployment complete!"
