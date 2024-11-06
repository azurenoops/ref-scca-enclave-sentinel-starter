# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Settings
DESCRIPTION: This resource generates Azure Sentinel settings.
AUTHOR/S: jrspinella
*/

module "mod_sentinel" {
  providers = { azurerm = azurerm.security }
  source  = "azurenoops/overlays-sentinel/azurerm"
  version = "3.1.0"

  count = var.enable_sentinel ? 1 : 0

  # Global  
  deploy_environment = var.deploy_environment

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.sec_log_analytics.workspace_id

  # Only Required for Conent Hub Solutions
  log_analytics_workspace_location = var.default_location

  # Azure Active Directory Diagnostic Settings
  data_connector_aad_logs = var.data_connector_aad_logs

  # Azure Sentinel Data Connectors
  data_connectors = var.data_connectors

  # Azure UBEA Solutions
  ueba_data_sources     = var.ueba_data_sources
  ueba_entity_providers = var.ueba_entity_providers

  # Azure Sentinel Content Hub Solutions
  # Enable Content Hub First Party Solutions
  enable_solution_azure_ad                        = var.enable_solution_azure_ad
  enable_solution_azure_activity                  = var.enable_solution_azure_activity
  enable_solution_microsoft_365                   = var.enable_solution_microsoft_365
  enable_solution_microsoft_teams                 = var.enable_solution_microsoft_teams
  enable_solution_microsoft_defender_for_cloud    = var.enable_solution_microsoft_defender_for_cloud
  enable_solution_microsoft_defender_for_endpoint = var.enable_solution_microsoft_defender_for_endpoint
  enable_solution_microsoft_defender_for_iot      = var.enable_solution_microsoft_defender_for_iot
  enable_solution_microsoft_dynamics_365          = var.enable_solution_microsoft_dynamics_365
  enable_solution_office_insider_risk_management  = var.enable_solution_office_insider_risk_management
  enable_solution_office_365_project              = var.enable_solution_office_365_project
  enable_solution_office_365_powerbi              = var.enable_solution_office_365_powerbi
  enable_solution_threat_intelligence             = var.enable_solution_threat_intelligence

  # Enable Content Hub Solutions Essentials
  enable_solution_soar_essentials                             = var.enable_solution_soar_essentials
  enable_solution_ueba_essentials                             = var.enable_solution_ueba_essentials
  enable_solution_endpoint_threat_protection_essentials       = var.enable_solution_endpoint_threat_protection_essentials
  enable_solution_cloud_identity_threat_protection_essentials = var.enable_solution_cloud_identity_threat_protection_essentials
  enable_solution_cloud_service_threat_protection_essentials  = var.enable_solution_cloud_service_threat_protection_essentials
  enable_solution_attacker_tools_threat_protection_essentials = var.enable_solution_attacker_tools_threat_protection_essentials
  enable_solution_network_session_essentials                  = var.enable_solution_network_session_essentials
  enable_solution_network_threat_protection_essentials        = var.enable_solution_network_threat_protection_essentials
  enable_solution_security_threat_essentials                  = var.enable_solution_security_threat_essentials
  enable_solution_soc_handbook                                = var.enable_solution_soc_handbook
  enable_solution_soc_process_fx                              = var.enable_solution_soc_process_fx

  # Enable Content Hub Solutions Training
  enable_solution_kql_training = var.enable_solution_kql_training
  enable_solution_training_lab = var.enable_solution_training_lab

  # Automation Rules
  automation_rules = var.enable_automation_rules ? local.automation_rules : {}

  # Azure Alerts
  fusion_alert_rules               = var.enable_fusion_alerts ? local.fusion_alerts : {}
  machine_learning_alert_rules     = var.enable_machine_learning_alerts ? local.machine_learning_alerts : {}
  scheduled_alert_rules            = var.enable_scheduled_alerts ? local.scheduled_alerts : {}
  ms_security_incident_alert_rules = var.enable_microsoft_incident_alerts ? local.microsoft_incident_alerts : {}
}
