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

module "mod_sentinel_dataASC" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/sentinel_connectors/asc"
  version                    = "~> 1.0"

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_dataATP" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/sentinel_connectors/atp"
  version                    = "~> 1.0"

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

# Paid Tier

module "mod_sentinel_dataAAD" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/sentinel_connectors/aad"
  version                    = "~> 1.0"

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_dataCAS" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/sentinel_connectors/cas"
  version                    = "~> 1.0"
  count                      = var.enable_cas ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_datad365" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/sentinel_connectors/d365"
  version                    = "~> 1.0"
  count                      = var.enable_d365 ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}

module "mod_sentinel_dataATP" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/sentinel_connectors/datp"
  version                    = "~> 1.0"
  count                      = var.enable_datp ? 1 : 0

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
}
