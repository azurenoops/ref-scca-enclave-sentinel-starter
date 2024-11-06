# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Configuration
#################################

variable "environment" {
  description = "Name of the environment. This will be used to name the private endpoint resources deployed by this module. default is 'public'"
  type        = string
}

variable "deploy_environment" {
  description = "Name of the workload's environnement (dev, test, prod, etc). This will be used to name the resources deployed by this module. default is 'dev'"
  type        = string
}

variable "org_name" {
  description = "Name of the organization. This will be used to name the resources deployed by this module. default is 'anoa'"
  type        = string
  default     = "anoa"
}

variable "default_location" {
  type        = string
  description = "If specified, will set the Azure region in which region bound resources will be deployed. Please see: https://azure.microsoft.com/en-gb/global-infrastructure/geographies/"
  default     = "eastus"
}

variable "default_tags" {
  type        = map(string)
  description = "If specified, will set the default tags for all resources deployed by this module where supported."
  default     = {}
}

variable "disable_base_module_tags" {
  type        = bool
  description = "If set to true, will remove the base module tags applied to all resources deployed by the module which support tags."
  default     = false
}

variable "disable_telemetry" {
  type        = bool
  description = "If set to true, will disable telemetry for all resources deployed by this module."
  default     = false
}

variable "security_subscription_id" {
  type        = string
  description = "If specified, identifies the subscription for exemption."
  sensitive   = true
  default = null
  validation {
    condition     = can(regex("^[a-z0-9-]{36}$", var.security_subscription_id)) || var.security_subscription_id == ""
    error_message = "Value must be a valid Subscription ID (GUID)."
  }
}

#################################
# Resource Lock Configuration
#################################

variable "enable_resource_locks" {
  type        = bool
  description = "If set to true, will enable resource locks for all resources deployed by this module where supported."
  default     = false
}

variable "lock_level" {
  description = "The level of lock to apply to the resources. Valid values are CanNotDelete, ReadOnly, or NotSpecified."
  type        = string
  default     = "CanNotDelete"
}

variable "existing_sec_laws_name" {
  description = "The name of the existing Log Analytics Workspace for security logs."
  type        = string  
}

variable "existing_sec_laws_rgname" {
  description = "The name of the existing Resource Group for the Log Analytics Workspace for security logs."
  type        = string  
}