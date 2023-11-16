# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel Auomation
DESCRIPTION: This resource generates sentinel automation rules based on the automation rules input from the TFVars file.
AUTHOR/S: jrspinella
*/

###################################################
###  Sentinel Automation Rules Configuations    ###
###################################################

/* module "mod_sentinel_automation_rules" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/automation_rule"
  version = "~> 1.0"

  depends_on = [module.mod_sentinel_scheduled_alert_rules]

  for_each = var.enable_automation_rules ? var.automation_rules : {}

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Sentinel Automation Rule
  name                     = each.value.name
  description              = each.value.description
  display_name             = each.value.display_name
  severity_filter          = each.value.severity_filter
  alert_rule_template_guid = each.value.alert_rule_template_guid
  enable_rule_alert        = each.value.enabled
} */