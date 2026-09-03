# Azure Deployment Scripts

## Overview
This repository contains reusable PowerShell scripts for deploying and managing Azure resources.  
It is designed to demonstrate practical DevOps automation and provide a portfolio of cloud infrastructure skills.

## Features
- Deploy Azure resources with annotated scripts:
  - `sql/` for SQL Server + Database deployments
  - `storage/` for Storage Account scripts
  - `app-service/` for App Service deployments
  - `networking/` for VNet and NSG configurations
- Organized folder structure for multiple resource types
- Easy to extend and adapt for different environments

## Architecture Diagram

```mermaid
flowchart TB

    %% Nodes
    Client(["🌐 HTTP Requests"])
    App["☁️ Azure App Service"]
    SQL[("🗄️ Azure SQL Database")]
    Storage[("📦 Azure Storage Account")]
    Network["🔐 Virtual Network + NSG"]

    %% Connections
    Client -->|HTTPS| App
    App -->|Database Connection| SQL
    App -->|Blob / File Access| Storage
    App -->|VNet Integration| Network
    SQL --> Network
    Storage --> Network

    %% Styling
    classDef client fill:#24292f,stroke:#58a6ff,stroke-width:2px,color:#ffffff
    classDef compute fill:#0078D4,stroke:#50e6ff,stroke-width:2px,color:#ffffff
    classDef database fill:#512BD4,stroke:#a78bfa,stroke-width:2px,color:#ffffff
    classDef storage fill:#107C10,stroke:#54d454,stroke-width:2px,color:#ffffff
    classDef network fill:#D83B01,stroke:#ff9f70,stroke-width:2px,color:#ffffff

    class Client client
    class App compute
    class SQL database
    class Storage storage
    class Network network
```

## Prerequisites
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli) installed
- Active Azure subscription
- Git installed and configured
- Visual Studio Code (recommended)

## Installation
Clone the repository:

```bash
git clone https://github.com/boricua007/Azure-Deployment-Scripts.git
cd Azure-Deployment-Scripts

## Author

**Daisy Allen**

Software Developer focused on **.NET, Azure cloud technologies, application modernization, and DevOps automation**.

---