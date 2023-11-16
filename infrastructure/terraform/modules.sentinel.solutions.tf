# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel Content Hub Solutions
DESCRIPTION: This resource generates sentinel Content Hub Solutions you want to install into your Microsoft Sentinel environment. 
Content Hub Solutions may contain different content types, like data connectors, analytics rules, parsers, workbooks, playbooks, hunting queries, etc."
AUTHOR/S: jrspinella
*/

#######################################################
###  Sentinel Content Hub Solutions Configuations   ###
#######################################################

module "mod_sentinel_content_hub_solutions" {
  source  = "azurenoops/overlays-sentinel/azurerm//modules/content_hub_solutions"
  version = "~> 1.0"

  # Log Analytics Workspace
  log_analytics_workspace_name = data.azurerm_log_analytics_workspace.loganalytics.name
  resource_group_name          = data.azurerm_log_analytics_workspace.loganalytics.resource_group_name
  location                     = data.azurerm_log_analytics_workspace.loganalytics.location
  deploy_environment           = var.deploy_environment

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
}

