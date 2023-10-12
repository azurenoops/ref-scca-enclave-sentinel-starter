# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel Content Hub Solutions
DESCRIPTION: This resource generates sentinel content hub solutions based on the solution input into the module
AUTHOR/S: jrspinella
*/

#######################################################
###  Sentinel Content Hub Solutions Configuations   ###
#######################################################

module "mod_sentinel_content_hub_solutions" {
  source                     = "azurenoops/overlays-sentinel/azurerm//modules/content_hub_solutions"
  version                    = "~> 1.0"

  # Log Analytics Workspace
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.loganalytics.id

  # Enable Content Hub First Party Solutions
  enable_solution_azure_ad             = var.enable_solution_azure_ad
  enable_solution_azure_activity       = var.enable_solution_azure_activity
  enable_solution_treat_intelligence   = var.enable_solution_treat_intelligence
  enable_solution_microsoft_365        = var.enable_solution_microsoft_365
  enable_solution_teams                = var.enable_solution_teams
  enable_solution_ms_defender_endpoint = var.enable_solution_ms_defender_endpoint
  enable_solution_ms_defender_cloud    = var.enable_solution_ms_defender_cloud
  enable_solution_iot                  = var.enable_solution_iot
  enable_solution_dynamics_365         = var.enable_solution_dynamics_365
  enable_solution_office_irma          = var.enable_solution_office_irma
  enable_solution_office_365_project   = var.enable_solution_office_365_project
  enable_solution_office_power_bi      = var.enable_solution_office_power_bi

  # Enable Content Hub Solutions Essentials
  enable_solution_soar_essentials                             = var.enable_solution_soar_essentials
  enable_solution_ueba_essentials                             = var.enable_solution_ueba_essentials
  enable_solution_endpoint_threat_protection_essentials       = var.enable_solution_endpoint_threat_protection_essentials
  enable_solution_cloud_id_threat_protection_essentials       = var.enable_solution_cloud_id_threat_protection_essentials
  enable_solution_cloud_service_threat_protection_essentials  = var.enable_solution_cloud_service_threat_protection_essentials
  enable_solution_attacker_tools_threat_protection_essentials = var.enable_solution_attacker_tools_threat_protection_essentials
  enable_solution_network_session_essentials                  = var.enable_solution_network_session_essentials
  enable_solution_network_threat_protection_essentials        = var.enable_solution_network_threat_protection_essentials
  enable_solution_security_threat_essentials                  = var.enable_solution_security_threat_essentials
  enable_solution_soc_handbook                                = var.enable_solution_soc_handbook
  enable_solution_soc_process_framework                       = var.enable_solution_soc_process_framework

  # Enable Content Hub Solutions Training
  enable_solution_kql_training = var.enable_solution_kql_training
  enable_solution_training_lab = var.enable_solution_training_lab
}

