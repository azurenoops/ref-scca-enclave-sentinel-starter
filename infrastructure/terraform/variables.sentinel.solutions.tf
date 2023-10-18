# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Sentinel Configuration
#################################

variable "enable_solution_azure_ad" {
  description = "Enable Azure AD Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_azure_activity" {
  description = "Enable Azure Activity Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_treat_intelligence" {
  description = "Enable Threat Intelligence Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_365" {
  description = "Enable Microsoft 365 Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_teams" {
  description = "Enable Teams Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_defender_for_endpoint" {
  description = "Enable Microsoft Defender for Endpoint Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_defender_for_cloud" {
  description = "Enable Microsoft Defender for Cloud Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_defender_for_iot" {
  description = "Enable IoT Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_microsoft_dynamics_365" {
  description = "Enable Dynamics 365 Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_office_insider_risk_management" {
  description = "Enable Office IRMA Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_office_365_project" {
  description = "Enable Office 365 Project Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_office_365_powerbi" {
  description = "Enable Office Power BI Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_soar_essentials" {
  description = "Enable SOAR Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_ueba_essentials" {
  description = "Enable UEBA Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_endpoint_threat_protection_essentials" {
  description = "Enable Endpoint Threat Protection Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_cloud_id_threat_protection_essentials" {
  description = "Enable Cloud ID Threat Protection Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_cloud_service_threat_protection_essentials" {
  description = "Enable Cloud Service Threat Protection Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_attacker_tools_threat_protection_essentials" {
  description = "Enable Attacker Tools Threat Protection Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_network_session_essentials" {
  description = "Enable Network Session Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_network_threat_protection_essentials" {
  description = "Enable Network Threat Protection Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_security_threat_essentials" {
  description = "Enable Security Threat Essentials Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_soc_handbook" {
  description = "Enable SOC Handbook Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_soc_process_framework" {
  description = "Enable SOC Process Framework Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_kql_training" {
  description = "Enable KQL Training Content Hub Solution"
  type        = bool
  default     = false
}

variable "enable_solution_training_lab" {
  description = "Enable Training Lab Content Hub Solution"
  type        = bool
  default     = false
}