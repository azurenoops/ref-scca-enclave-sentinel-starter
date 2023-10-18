# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

###########################
## Global Configurations ##
###########################

# The prefixes to use for all resources in this deployment
org_name           = "anoa"         # This Prefix will be used on most deployed resources.  10 Characters max.
deploy_environment = "dev"          # dev | test | prod
environment        = "usgovernment" # public | usgovernment

# The default region to deploy to
default_location = "usgovvirginia"

# The log analytics workspace/storage account to use for Sentinel
log_analytics_workspace_name       = "anoa-usgva-ops-mgt-logging-dev-log"
log_analytics_storage_account_name = "anoausgva0e9929devst"
log_analytics_workspace_rg         = "anoa-usgva-ops-mgt-logging-dev-rg"

##############################################
# Sentinel Data Connectors Configurations  ###
##############################################

# Sentinel Data Connectors - Free Versions
enable_azure_security_center = true
enable_threat_intelligence   = true

# Sentinel Data Connectors - Paid Versions
enable_azure_active_directory                        = false
enable_azure_advanced_threat_protection              = false
enable_microsoft_cloud_app_security                  = false
enable_dynamics_365                                  = false
enable_microsoft_defender_advanced_threat_protection = false

#######################################
# Sentinel Settings Configurations  ###
#######################################

enable_ueba = false

#########################################################################
# Sentinel Azure Active Directory Diagnostic Settings Configurations  ###
#########################################################################

enable_sign_in_logs                      = true
enable_audit_logs                        = true
enable_non_interactive_user_sign_in_logs = true
enable_service_principal_sign_in_logs    = true
enable_managed_identity_sign_in_logs     = true
enable_provisioning_logs                 = false
enable_adfs_sign_in_logs                 = true
enable_user_risk_events                  = true
enable_risky_events                      = true
enable_network_access_traffic_logs       = false
enable_risky_service_principals          = true
enable_service_principal_risk_events     = true

####################################################
# Sentinel Content Hub Solutions Configurations  ###
####################################################

# Enable Content Hub First Party Solutions
enable_solution_azure_ad             = false
enable_solution_treat_intelligence   = false
enable_solution_microsoft_365        = false
enable_solution_teams                = false
enable_solution_ms_defender_endpoint = false
enable_solution_ms_defender_cloud    = false
enable_solution_iot                  = false
enable_solution_dynamics_365         = false
enable_solution_office_irm           = false
enable_solution_office_365_project   = false
enable_solution_office_power_bi      = false

# Enable Content Hub Solutions Essentials
enable_solution_soar_essentials                             = false
enable_solution_ueba_essentials                             = false
enable_solution_endpoint_threat_protection_essentials       = false
enable_solution_cloud_id_threat_protection_essentials       = false
enable_solution_cloud_service_threat_protection_essentials  = false
enable_solution_attacker_tools_threat_protection_essentials = false
enable_solution_network_session_essentials                  = false
enable_solution_network_threat_protection_essentials        = false
enable_solution_security_threat_essentials                  = false
enable_solution_soc_handbook                                = false
enable_solution_soc_process_framework                       = false

# Enable Content Hub Solutions Training
enable_solution_kql_training = false
enable_solution_training_lab = false
enable_solution_activeAD     = false

##########################################
# Sentinel Alert Rules Configurations  ###
##########################################

# Sentinel MS Incident Rule Alerts
enable_microsoft_alerts = true

# Sentinel Rule Alerts - Microsoft
microsoft_alerts = {
  "Azure Active Directory Identity Protection alerts" = {
    description              = "Create incidents based on Azure Active Directory Identity Protection alerts"
    display_name             = "Create incidents based on all alerts generated in Azure Active Directory Identity Protection"
    product_filter           = "Azure Active Directory Identity Protection"
    severity_filter          = ["High"]
    alert_rule_template_guid = "532c1811-79ee-4d9f-8d4d-6304c840daa1"
    enabled                  = true
  },
  "Azure Security Center alerts" = {
    description              = "Create incidents based on Azure Security Center alerts"
    display_name             = "Create incidents based on all alerts generated in Azure Security Center"
    product_filter           = "Azure Security Center"
    severity_filter          = ["High"]
    alert_rule_template_guid = "90586451-7ba8-4c1e-9904-7d1b7c3cc4d6"
    enabled                  = true
  },
  "Azure Advanced Threat Protection alerts" = {
    description              = "Create incidents based on Azure Advanced Threat Protection alerts"
    display_name             = "Create incidents based on all alerts generated in Azure Advanced Threat Protection"
    product_filter           = "Azure Advanced Threat Protection"
    severity_filter          = ["High"]
    alert_rule_template_guid = "40ba9493-4183-4eee-974f-87fe39c8f267"
    enabled                  = true
  },
  "Microsoft Cloud App Security alerts" = {
    description              = "Create incidents based on Microsoft Cloud App Security alerts"
    display_name             = "Create incidents based on all alerts generated in Microsoft Cloud App Security"
    product_filter           = "Microsoft Cloud App Security"
    severity_filter          = ["High"]
    alert_rule_template_guid = "b3cfc7c0-092c-481c-a55b-34a3979758cb"
    enabled                  = true
  }

}

# Sentinel Fusion Rule Alerts
enable_fusion_alerts = true

# Sentinel Rule Alerts - Fusion
fusion_alerts = {
  "Fusion_alert_1" = {
    alert_rule_template_guid = "f71aba3d-28fb-450b-b192-4e76a83015c8"
    enabled                  = true
  }
}

# Sentinel Machine Learning Rule Alerts
enable_machine_learning_alerts = true

# Sentinel Rule Alerts - Fusion
machine_learning_alerts = {
  "Machine_learning_alert_1" = {
    alert_rule_template_guid = "fa118b98-de46-4e94-87f9-8e6d5060b60b"
    enabled                  = true
  },
  "Machine_learning_alert_2" = {
    alert_rule_template_guid = "737a2ce1-70a3-4968-9e90-3e6aca836abf"
    enabled                  = true
  }
}



