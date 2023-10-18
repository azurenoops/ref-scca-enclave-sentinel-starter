# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel Alerts
DESCRIPTION: This resource generates sentinel alerts based on the alert rules input into the module
AUTHOR/S: jrspinella
*/

###################################################
###  Sentinel MS Incident Alerts Configuations  ###
###################################################

module "mod_sentinel_ms_security_incident_alert_rules" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/ms_security_incident_alert_rule"
  version = "~> 1.0"

  for_each = var.enable_microsoft_alerts ? var.microsoft_alerts : {}

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Sentinel Alert Rule
  description              = each.value.description
  display_name             = each.value.display_name
  product_filter           = each.value.product_filter
  severity_filter          = each.value.severity_filter
  alert_rule_template_guid = each.value.alert_rule_template_guid
  //enable_rule_alert        = each.value.enabled
}

##############################################
###  Sentinel Fusion Alerts Configuations  ###
##############################################

module "mod_sentinel_fusion_alert_rules" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/fusion_alert_rule"
  version = "~> 1.0"

  for_each = var.enable_fusion_alerts ? var.fusion_alerts : {}

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Sentinel Alert Rule
  name                     = "Fusion Alert Rule"
  alert_rule_template_guid = each.value.alert_rule_template_guid
  enable_rule_alert        = each.value.enabled
}

########################################################
###  Sentinel Machine Learning Alerts Configuations  ###
########################################################
module "mod_sentinel_machine_learning_behavior_analytics_alert_rules" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/machine_learning_behavior_analytics_alert_rule"
  version = "~> 1.0"

  for_each = var.enable_machine_learning_alerts ? var.machine_learning_alerts : {}

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Sentinel Alert Rule
  alert_rule_template_guid = each.value.alert_rule_template_guid
  enable_rule_alert        = each.value.enabled
}
