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
enable_azure_active_directory                        = true
enable_azure_advanced_threat_protection              = true
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
enable_solution_azure_ad                        = true
enable_solution_azure_activity                  = true
enable_solution_microsoft_365                   = true
enable_solution_microsoft_teams                 = false
enable_solution_microsoft_defender_for_cloud    = true
enable_solution_microsoft_defender_for_endpoint = false
enable_solution_microsoft_defender_for_iot      = false
enable_solution_microsoft_dynamics_365          = false
enable_solution_office_insider_risk_management  = false
enable_solution_office_365_project              = false
enable_solution_office_365_powerbi              = false
enable_solution_threat_intelligence             = false

# Enable Content Hub Solutions Essentials
enable_solution_soar_essentials                             = true
enable_solution_ueba_essentials                             = true
enable_solution_endpoint_threat_protection_essentials       = false
enable_solution_cloud_identity_threat_protection_essentials = false
enable_solution_cloud_service_threat_protection_essentials  = false
enable_solution_attacker_tools_threat_protection_essentials = false
enable_solution_network_session_essentials                  = false
enable_solution_network_threat_protection_essentials        = false
enable_solution_security_threat_essentials                  = false
enable_solution_soc_handbook                                = false
enable_solution_soc_process_fx                              = false

# Enable Content Hub Solutions Training
enable_solution_kql_training = false
enable_solution_training_lab = false

##########################################
# Sentinel Automation Configurations   ###
##########################################

enable_automation_rules = false

# Sentinel Automation Rules
#automation_rules = 

##########################################
# Sentinel Alert Rules Configurations  ###
##########################################

# Sentinel MS Incident Rule Alerts
enable_microsoft_incident_alerts = true

# Sentinel Fusion Rule Alerts
enable_fusion_alerts = true

# Sentinel Machine Learning Rule Alerts
enable_machine_learning_alerts = true

# Sentinel Machine Learning Rule Alerts
enable_scheduled_alerts = true


