# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

########################################
# Global Sentinel Alerts Configuration #
########################################

variable "enable_microsoft_incident_alerts" {
  description = "Enable Microsoft Incident Alert Rules"
  type        = bool
  default     = false
}

variable "enable_fusion_alerts" {
  description = "Enable Fusion Alert Rules"
  type        = bool
  default     = false
}

variable "enable_machine_learning_alerts" {
  description = "Enable Machine Learning Alert Rules"
  type        = bool
  default     = false
}

variable "enable_scheduled_alerts" {
  description = "Enable Scheduled Alert Rules"
  type        = bool
  default     = false
}

