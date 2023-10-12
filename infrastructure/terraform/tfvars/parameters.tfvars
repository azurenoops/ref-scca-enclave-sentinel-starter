# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

###########################
## Global Configuration  ##
###########################

# The prefixes to use for all resources in this deployment
org_name           = "anoa"         # This Prefix will be used on most deployed resources.  10 Characters max.
deploy_environment = "dev"          # dev | test | prod
environment        = "usgovernment" # public | usgovernment

# The default region to deploy to
default_location = "usgovvirginia"

# The log analytics workspace to use for Sentinel
log_analytics_workspace_name = "anoa-log-analytics-workspace"
log_analytics_workspace_rg   = "anoa-log-analytics-workspace-rg"

##############################################
# Sentinel Data Connectors Configuration   ###
##############################################

# Sentinel Data Connectors - Paid Versions
enable_aad = true

#######################################
# Sentinel Settings Configuration   ###
#######################################

enable_ueba = true

#########################################################################
# Sentinel Azure Active Directory Diagnostic Settings Configuration   ###
#########################################################################

enable_sign_in_logs                      = false
enable_audit_logs                        = false
enable_non_interactive_user_sign_in_logs = false
enable_service_principal_sign_in_logs    = false
enable_managed_identity_sign_in_logs     = false
enable_provisioning_logs                 = false
enable_adfs_sign_in_logs                 = false
enable_user_risk_events                  = false
enable_risky_events                      = false
enable_network_access_traffic_logs       = false
enable_risky_service_principals          = false
enable_service_principal_risk_events     = false

########################################
# Sentinel Solutions Configuration   ###
########################################

# Enable Content Hub First Party Solutions
enable_solution_azure_ad = true
enable_solution_treat_intelligence = true
enable_solution_microsoft_365 = true
enable_solution_teams = true
enable_solution_ms_defender_endpoint = true
enable_solution_ms_defender_cloud = true
enable_solution_iot = true
enable_solution_dynamics_365 = true
enable_solution_office_irm = true
enable_solution_office_365_project = true
enable_solution_office_power_bi = true

# Enable Content Hub Solutions Essentials
enable_solution_soar_essentials = true
enable_solution_ueba_essentials = true
enable_solution_endpoint_threat_protection_essentials = true
enable_solution_cloud_id_threat_protection_essentials = true
enable_solution_cloud_service_threat_protection_essentials = true
enable_solution_attacker_tools_threat_protection_essentials = true
enable_solution_network_session_essentials = true
enable_solution_network_threat_protection_essentials = true
enable_solution_security_threat_essentials = true
enable_solution_soc_handbook = true
enable_solution_soc_process_framework = true

# Enable Content Hub Solutions Training
enable_solution_kql_training = true
enable_solution_training_lab = true
enable_solution_activeAD = true
enable_solution_activeAD = true

####################################
# Sentinel Rules Configuration   ###
####################################

# Sentinel Rule Alerts
sentinel_rule_alerts = {} # End Alert Rules



