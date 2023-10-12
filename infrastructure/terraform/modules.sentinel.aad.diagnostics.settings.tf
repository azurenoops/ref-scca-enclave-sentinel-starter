# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel AAD Diagnostic Settings
DESCRIPTION: This resource generates azure sentinel diagnostic settings for Azure Active Directory.
AUTHOR/S: jrspinella
*/

module "mod_sentinel_azure_active_directory" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/aad_monitor_settings"
  version = "~> 1.0"

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Azure Active Directory Diagnostic Settings
  enable_sign_in_logs                      = var.enable_sign_in_logs
  enable_audit_logs                        = var.enable_audit_logs
  enable_non_interactive_user_sign_in_logs = var.enable_non_interactive_user_sign_in_logs
  enable_service_principal_sign_in_logs    = var.enable_service_principal_sign_in_logs
  enable_managed_identity_sign_in_logs     = var.enable_managed_identity_sign_in_logs
  enable_provisioning_logs                 = var.enable_provisioning_logs
  enable_adfs_sign_in_logs                 = var.enable_adfs_sign_in_logs
  enable_user_risk_events                  = var.enable_user_risk_events
  enable_risky_events                      = var.enable_risky_events
  enable_network_access_traffic_logs       = var.enable_network_access_traffic_logs
  enable_risky_service_principals          = var.enable_risky_service_principals
  enable_service_principal_risk_events     = var.enable_service_principal_risk_events
}
