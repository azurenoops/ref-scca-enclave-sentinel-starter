# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

############################################
# Global Sentinel Automation Configuration #
############################################

variable "enable_automation_rules" {
  description = "Enable Sentinel Automation Rules"
  type        = bool
  default     = false
}

variable "automation_rules" {
  description = "List of Sentinel Automation Rules"
  type = map(object({
    name                     = string
    description              = string
    display_name             = string
    severity_filter          = list(string)
    alert_rule_template_guid = string
    enabled                  = bool
  }))
  default = {}
}