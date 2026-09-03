# ================================
# Azure SQL Deployment Script
# ================================
# This script creates an Azure SQL Server and Database.
# Update the variables below with your own values.

# Variables
$resourceGroup = "MyResourceGroup"
$location = "eastus"
$sqlServerName = "my-sql-server-001"
$sqlAdminUser = "sqladmin"
$sqlAdminPassword = "P@ssw0rd123!"  -- Sample only. Update this with a strong password for the SQL admin user
$sqlDatabaseName = "MyDatabase"

# Create Resource Group
az group create --name $resourceGroup --location $location

# Create SQL Server
az sql server create `
    --name $sqlServerName `
    --resource-group $resourceGroup `
    --location $location `
    --admin-user $sqlAdminUser `
    --admin-password $sqlAdminPassword

# Create SQL Database
az sql db create `
    --resource-group $resourceGroup `
    --server $sqlServerName `
    --name $sqlDatabaseName `
    --service-objective S0

Write-Host "✅ Azure SQL deployment complete!"
