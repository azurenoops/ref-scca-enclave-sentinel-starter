# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

########################################
# Management Logging Configuration    ##
########################################

variable "log_analytics_workspace_sku" {
  description = "The SKU of the Log Analytics Workspace. Possible values are PerGB2018 and Free. Default is PerGB2018."
  type        = string
  default     = "PerGB2018"
}

variable "log_analytics_logs_retention_in_days" {
  description = "The retention period for logs in days. Possible values range between 30 and 730. Default is 30."
  type        = number
  default     = 30
}

variable "log_analytics_storage_account_kind" {
  description = "Specifies the kind of log analytics storage account. Possible values are Storage, StorageV2, BlobStorage, and FileStorage. Default is StorageV2."
  type        = string
  default     = "StorageV2"
}

variable "log_analytics_storage_account_tier" {
  description = "Specifies the Tier to use for this log analytics storage account. Possible values are Standard and Premium. Default is Standard."
  type        = string
  default     = "Standard"
}

variable "log_analytics_storage_account_replication_type" {
  description = "Specifies the type of replication to use for this log analytics storage account. Possible values are LRS, GRS, RAGRS, ZRS, and GZRS. Default is GRS."
  type        = string
  default     = "GRS"
}
  
#####################################
# Log Solutions Configuration     ##
#####################################

variable "enable_sentinel" {
  description = "Controls if Sentinel should be enabled. Default is true."
  type        = bool
  default     = true
}