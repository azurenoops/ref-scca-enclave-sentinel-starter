# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

###########################
## Global Configurations ##
###########################

# The prefixes to use for all resources in this deployment
org_name           = "ampe"   # This Prefix will be used on most deployed resources.  10 Characters max.
deploy_environment = "dev"   # dev | test | prod
environment        = "usgovernment" # public | usgovernment

# The default region to deploy to
default_location = "usgovvirginia"

# Log Analytics Workspace Settings
existing_sec_laws_name   = "anoa-usgva-sec-logging-dev-log"
existing_sec_laws_rgname = "anoa-usgva-sec-logging-dev-rg"

# Enable/Disable Sentinel
enable_sentinel = true

##############################################
# Sentinel Data Connectors Configurations  ###
##############################################

# Sentinel Data Connectors
# - AzureActiveDirectory
# - AzureAdvancedThreatProtection
# - AzureSecurityCenter
# - Dynamics365
# - IoT
# - Office365
# - Office365Project
# - OfficeATP
# - OfficeIRM
# - OfficePowerBI
# - MicrosoftCloudAppSecurity
# - MicrosoftDefenderAdvancedThreatProtection
# - MicrosoftThreatIntelligence
# - MicrosoftCloudAppSecurity
# - MicrosoftThreatProtection
# - ThreatIntelligence
data_connectors = ["AzureAdvancedThreatProtection", "AzureSecurityCenter", "OfficeATP", "MicrosoftDefenderAdvancedThreatProtection", "MicrosoftThreatIntelligence", "MicrosoftCloudAppSecurity", "MicrosoftThreatProtection"]

#####################################
# Sentinel UBEA Configurations    ###
#####################################

enable_ueba = true

# UBEA Data Sources and Entity Providers
ueba_data_sources     = ["AuditLogs", "AzureActivity", "SecurityEvent", "SigninLogs"]
ueba_entity_providers = ["AzureActiveDirectory"]

#########################################################################
# Sentinel Azure Active Directory Diagnostic Settings Configurations  ###
#########################################################################

data_connector_aad_logs = ["AuditLogs", "SignInLogs", "NonInteractiveUserSignInLogs", "ServicePrincipalSignInLogs", "ManagedIdentitySignInLogs", "ProvisioningLogs", "ADFSSignInLogs", "RiskyUsers", "UserRiskEvents", "NetworkAccessTrafficLogs", "RiskyServicePrincipals", "ServicePrincipalRiskEvents", "EnrichedOffice365AuditLogs", "MicrosoftGraphActivityLogs"]
retention_policy_days   = 30

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
# Update Automation Rules in local file. See locaL.automation.rules.tf for examples.

##########################################
# Sentinel Alert Rules Configurations  ###
##########################################

# Sentinel MS Incident Rule Alerts
# Update MS Incident Rule Alerts in local file. See local.microsoft.incident.alerts.tf for examples.
enable_microsoft_incident_alerts = true

# Sentinel Fusion Rule Alerts
# Update Fusion Rule Alerts in local file. See local.fusion.alerts.tf for examples.
enable_fusion_alerts = true

# Sentinel Machine Learning Rule Alerts
# Update Machine Learning Rule Alerts in local file. See local.machine.learning.alerts.tf for examples.
enable_machine_learning_alerts = true

# Sentinel Scheduled Alerts
# Update Machine Learning Rule Alerts in local file. See local.scheduled.alerts.tf for examples.
enable_scheduled_alerts = false



