# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Playbooks
DESCRIPTION: This resource generates Azure Sentinel playbooks from input from the TFVars file.
AUTHOR/S: jrspinella
*/

##################################################
###  Sentinel Playbooks Configuations          ###
##################################################

/* module "mod_sentinel_playbooks" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/playbook"
  version = "~> 1.0"

  for_each = var.enable_playbooks ? var.playbooks : {}

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Sentinel Playbook
  name                     = each.value.name
  description              = each.value.description
  display_name             = each.value.display_name
  severity_filter          = each.value.severity_filter
  alert_rule_template_guid = each.value.alert_rule_template_guid
  enable_rule_alert        = each.value.enabled
} */