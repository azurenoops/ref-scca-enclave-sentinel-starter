# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

##################################################
# Sentinel Content Hub Solution Configuration  ###
##################################################

# First Party Solutions
variable "enable_solution_azure_ad" {
  description = "Enable Azure Active Directory Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_azure_activity" {
  description = "Enable Azure Activity Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_365" {
  description = "Enable Microsoft 365 Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_teams" {
  description = "Enable Microsoft Teams Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_threat_intelligence" {
  description = "Enable Threat Intelligence Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_defender_for_cloud" {
  description = "Enable Microsoft Defender for Cloud Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_defender_for_iot" {
  description = "Enable Microsoft Defender for IoT Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_defender_for_endpoint" {
  description = "Enable Microsoft Defender for Endpoint Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_dynamics_365" {
  description = "Enable Microsoft Dynamics 365 Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_office_insider_risk_management" {
  description = "Enable Office Insider Risk Management Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_office_365_project" {
  description = "Enable Office 365 Project Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_office_365_powerbi" {
  description = "Enable Office 365 PowerBI Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_soc_handbook" {
  description = "Enable SOC Handbook Solution in Sentinel. Default is false."
  type        = bool
  default     = false
}

variable "enable_solution_soc_process_fx" {
  description = "Enable SOC Process FX Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}

# Essentials Solutions
variable "enable_solution_soar_essentials" {
  description = "Enable SOAR Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}

variable "enable_solution_ueba_essentials" {
  description = "Enable UEBA Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}

variable "enable_solution_attacker_tools_threat_protection_essentials" {
  description = "Enable Attacker Tools Threat Protection Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}

variable "enable_solution_cloud_identity_threat_protection_essentials" {
  description = "Enable Cloud Identity Threat Protection Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}

variable "enable_solution_cloud_service_threat_protection_essentials" {
  description = "Enable Cloud Service Threat Protection Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false    
}

variable "enable_solution_endpoint_threat_protection_essentials" {
  description = "Enable Endpoint Threat Protection Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false      
}

variable "enable_solution_network_session_essentials" {
  description = "Enable Network Session Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false   
}

variable "enable_solution_network_threat_protection_essentials" {
  description = "Enable Network Threat Protection Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false   
}

variable "enable_solution_security_threat_essentials" {
  description = "Enable Security Threat Essentials Solution in Sentinel. Default is false."
  type        = bool
  default     = false   
}

# Training Solutions
variable "enable_solution_kql_training" {
  description = "Enable KQL Training Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}

variable "enable_solution_training_lab" {
  description = "Enable Training Lab Solution in Sentinel. Default is false."
  type        = bool
  default     = false  
}
