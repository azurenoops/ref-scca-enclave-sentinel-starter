# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Sentinel Configuration
#################################

variable "enable_aad" {
  description = "Enable Azure Active Directory Data Connector. Relevant license and Global Admin or Security Admin permission required."
  type        = bool
  default     = false
}

variable "enable_aa" {
  description = "Enable Azure Activity Data Connector. Relevant permissions at the subscription level are required."
  type        = bool
  default     = false
}

variable "enable_cas" {
  description = "Enable Cloud App Security Data Connector"
  type        = bool
  default     = false
}

variable "enable_d365" {
  description = "Enable Dynamics 365 Data Connector"
  type        = bool
  default     = false
}

variable "enable_enable_datp" {
  description = "Enable Microsoft Defender Advanced Threat Protection Data Connector. "
  type        = bool
  default     = false
}

variable "enable_m365" {
  description = "Enable Microsoft 365 Data Connector"
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

