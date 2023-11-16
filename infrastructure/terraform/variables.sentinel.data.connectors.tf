# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Sentinel Configuration
#################################

variable "enable_azure_security_center" {
  description = "Enable Azure Security Center Data Connector."
  type        = bool
  default     = false
}

variable "enable_azure_active_directory" {
  description = "Enable Azure Active Directory Data Connector. Relevant license and Global Admin or Security Admin permission required."
  type        = bool
  default     = false
}

variable "enable_azure_active_directory_identity_protection" {
  description = "Enable Azure Active Directory Identity Protection Data Connector. Relevant license and Global Admin or Security Admin permission required."
  type        = bool
  default     = false
}

variable "enable_azure_activity" {
  description = "Enable Azure Activity Data Connector. Relevant permissions at the subscription level are required."
  type        = bool
  default     = false
}

variable "enable_microsoft_cloud_app_security" {
  description = "Enable Cloud App Security Data Connector"
  type        = bool
  default     = false
}

variable "enable_dynamics_365" {
  description = "Enable Dynamics 365 Data Connector. Relevant license and Global Admin or Security Admin permission required"
  type        = bool
  default     = false
}

variable "enable_microsoft_defender_advanced_threat_protection" {
  description = "Enable Microsoft Defender Advanced Threat Protection Data Connector. "
  type        = bool
  default     = false
}

variable "enable_microsoft_insider_risk_management" {
  description = "Enable Microsoft Insider Risk Management Data Connector. Relevant license and Global Admin or Security Admin permission required."
  type        = bool
  default     = false
}

variable "enable_microsoft_365" {
  description = "Enable Microsoft 365 Data Connector. This will only enable incident and alert synchronization, no advanced hunting data will be enabled. Relevant license and Global Admin or Security Admin permission required."
  type        = bool
  default     = false
}

variable "enable_m365atp" {
  description = "Enable Microsoft 365 Advanced Threat Protection Data Connector"
  type        = bool
  default     = false
}

variable "enable_m365mcas" {
  description = "Enable Microsoft 365 Cloud App Security Data Connector"
  type        = bool
  default     = false
}

variable "enable_azure_advanced_threat_protection" {
  description = "Enable Azure Advanced Threat Protection Data Connector. Relevant license and Global Admin or Security Admin permission required."
  type        = bool
  default     = false
}

variable "enable_threat_intelligence" {
  description = "Enable Threat Intelligence Data Connector"
  type        = bool
  default     = false
}
