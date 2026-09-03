# Azure Deployment Scripts

## Overview
A collection of reusable PowerShell scripts for deploying and configuring Microsoft Azure resources. The repository demonstrates practical experience with Azure infrastructure automation, networking, and DevOps.

## Deployment Scripts
- Deploy Azure resources with annotated scripts:
  - `app-service/` — Azure App Service deployments
  - `networking/` — Virtual Network and NSG configuration
  - `sql/` — Azure SQL Server and Database deployments
  - `storage/` — Azure Storage Account deployments

- The scripts are organized by Azure resource type and can be extended or adapted for different environments.


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

## Author

**Daisy Viruet-Allen**

Software Developer focused on **.NET, Azure cloud technologies, application modernization, and DevOps automation**.

---
