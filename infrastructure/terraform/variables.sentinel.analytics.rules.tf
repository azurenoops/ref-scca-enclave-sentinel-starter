# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Sentinel Configuration
#################################

variable "enable_microsoft_alerts" {
  description = "Enable Microsoft Alert Rules"
  type        = bool
  default     = false
}

variable "microsoft_alerts" {
  description = "List of Microsoft Alert Rules"
  type        = map(object({
    description              = string
    display_name             = string
    product_filter           = string
    severity_filter          = list(string)
    alert_rule_template_guid = string
    enabled                  = bool
  }))
  default = {}
}

variable "enable_fusion_alerts" {
  description = "Enable Fusion Alert Rules"
  type        = bool
  default     = false
}

variable "fusion_alerts" {
  description = "List of Fusion Alert Rules"
  type        = map(object({
    alert_rule_template_guid = string
    enabled                  = bool
  }))
  default = {}
}

variable "enable_machine_learning_alerts" {
  description = "Enable Machine Learning Alert Rules"
  type        = bool
  default     = false
}

variable "machine_learning_alerts" {
  description = "List of Machine Learning Alert Rules"
  type        = map(object({
    alert_rule_template_guid = string
    enabled                  = bool
  }))
  default = {}
}
