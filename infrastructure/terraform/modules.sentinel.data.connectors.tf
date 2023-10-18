# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Data Connectors
DESCRIPTION: This resource generates azure sentinel data connectors. 
AUTHOR/S: jrspinella
*/

##################################################
###  Sentinel Data Connections Configuations   ###
##################################################

# Free Tier

module "mod_sentinel_data_azure_security_center" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/azure_security_center"
  version                    = "~> 1.0"
  count                      = var.enable_azure_security_center ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_data_threat_intelligence" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/threat_intelligence"
  version                    = "~> 1.0"
  count                      = var.enable_threat_intelligence ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

# Paid Tier

module "mod_sentinel_data_azure_active_directory" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/azure_active_directory"
  version                    = "~> 1.0"
  count                      = var.enable_azure_active_directory ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_data_azure_advanced_threat_protection" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/azure_advanced_threat_protection"
  version                    = "~> 1.0"
  count                      = var.enable_azure_advanced_threat_protection ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_data_microsoft_cloud_app_security" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/microsoft_cloud_app_security"
  version                    = "~> 1.0"
  count                      = var.enable_microsoft_cloud_app_security ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_data_dynamics_365" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/dynamics_365"
  version                    = "~> 1.0"
  count                      = var.enable_dynamics_365 ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_data_microsoft_defender_advanced_threat_protection" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/data_connectors/microsoft_defender_advanced_threat_protection"
  version                    = "~> 1.0"
  count                      = var.enable_microsoft_defender_advanced_threat_protection ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}
