terraform {
  # It is recommended to use remote state instead of local
  # backend "local" {} # Uncomment this line if you want to use local backend
  # If you are using Azure Storage, You can update these values in order to configure your remote state. backend.conf is not required for local backend.
  backend "azurerm" {    
    key                  = "ampe-sentinel"
  }

  required_version = ">= 1.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.36"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
    null = {
      source = "hashicorp/null"
    }
    random = {
      version = "= 3.4.3"
      source  = "hashicorp/random"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.8.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.security_subscription_id
  environment     = var.environment
  skip_provider_registration = true #var.environment == "usgovernment" ? true : false
  features {
    resource_group {
      prevent_deletion_if_contains_resources = var.provider_azurerm_features_resource_group.prevent_deletion_if_contains_resources # When that feature flag is set to true, this is required to stop the deletion of the resource group when the deployment is destroyed. This is required if the resource group contains resources that are not managed by Terraform.
    }
  }
}

provider "azurerm" {
  alias           = "security"
  subscription_id = var.security_subscription_id
  environment     = var.environment
  skip_provider_registration = true #var.environment == "usgovernment" ? true : false
  features {
    resource_group {
      prevent_deletion_if_contains_resources = var.provider_azurerm_features_resource_group.prevent_deletion_if_contains_resources # When that feature flag is set to true, this is required to stop the deletion of the resource group when the deployment is destroyed. This is required if the resource group contains resources that are not managed by Terraform.
    }
  }
}