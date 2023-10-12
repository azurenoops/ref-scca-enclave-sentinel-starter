# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel Alerts
DESCRIPTION: This resource generates sentinel alerts based on the alert rules input into the module
AUTHOR/S: jrspinella
*/

################################
###  Sentinel Configuations  ###
################################

module "mod_sentinel_alert_rules" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/alert_rules"
  version = "~> 1.0"
  
  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Enable Alert Rules
  enable_fusion_alert                = var.enable_fusion_alert
  enable_microsoft_alerts            = var.enable_microsoft_alerts
  enable_machine_learning_alerts     = var.enable_machine_learning_alerts

}

