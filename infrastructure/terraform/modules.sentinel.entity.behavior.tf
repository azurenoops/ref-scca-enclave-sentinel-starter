# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel UEBA Settings
DESCRIPTION: This resource generates sentinel settings based on the settings input into the module
AUTHOR/S: jrspinella
*/

#################################################
###  Sentinel Entity Behavior Configuations   ###
#################################################

/* module "mod_sentinel_ubea_settings" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/ueba"
  version                    = "~> 1.0"
  
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id
  enable_ueba                = var.enable_ueba
} */
