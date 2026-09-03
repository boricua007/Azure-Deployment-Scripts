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

    User(["👤 Client / User"])

    subgraph Azure["☁️ Microsoft Azure"]
        direction TB

        App["Azure App Service"]

        subgraph Data["Data Services"]
            direction LR
            SQL[("Azure SQL Database")]
            Storage[("Azure Storage Account")]
        end

        subgraph Security["Networking & Security"]
            VNet["Virtual Network"]
            NSG["Network Security Group"]
        end
    end

    User -->|HTTPS| App
    App -->|SQL Connection| SQL
    App -->|Blob / File Access| Storage
    App -->|VNet Integration| VNet
    VNet --> NSG

    classDef user fill:#24292f,stroke:#58a6ff,stroke-width:2px,color:#ffffff
    classDef app fill:#0078D4,stroke:#50e6ff,stroke-width:2px,color:#ffffff
    classDef data fill:#512BD4,stroke:#a78bfa,stroke-width:2px,color:#ffffff
    classDef security fill:#D83B01,stroke:#ff9f70,stroke-width:2px,color:#ffffff

    class User user
    class App app
    class SQL,Storage data
    class VNet,NSG security
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
