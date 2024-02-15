# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Sentinel Log Analytics Settings
DESCRIPTION: This resource creates a Log Analytics Workspace and configures the Sentinel Log Analytics Settings
AUTHOR/S: jrspinella
*/

#---------------------------------
# Security Management Logging
#---------------------------------
module "mod_sentinel_logging" {
  providers = { azurerm = azurerm.security }
  source    = "azurenoops/overlays-management-logging/azurerm"
  version   = "~> 1.0"

  #####################################
  ## Global Settings Configuration  ###
  #####################################

  create_resource_group = true
  location              = var.default_location
  deploy_environment    = var.deploy_environment
  org_name              = var.org_name
  environment           = var.environment
  workload_name         = "sentinel-logging"

  #############################
  ## Logging Configuration  ###
  #############################

  # (Optional) Logging Solutions
  # All solutions are enabled (true) by default in the Sentinel Starter. To disable a solution, set the value to false.
  enable_sentinel = var.enable_sentinel

  # These are not required if you are using an another Log Analytics Workspace for Sentinel
  enable_container_insights  = false
  enable_key_vault_analytics = false
  enable_vm_insights         = false


  # (Required) To enable Azure Monitoring
  # Sku Name - Possible values are PerGB2018 and Free
  # Log Retention in days - Possible values range between 30 and 730
  log_analytics_workspace_sku                   = var.log_analytics_workspace_sku
  log_analytics_logs_retention_in_days          = var.log_analytics_logs_retention_in_days
  loganalytics_storage_account_kind             = var.log_analytics_storage_account_kind
  loganalytics_storage_account_tier             = var.log_analytics_storage_account_tier
  loganalytics_storage_account_replication_type = var.log_analytics_storage_account_replication_type

  #############################
  ## Misc Configuration     ###
  #############################

  # By default, this will apply resource locks to all resources created by this module.
  # To disable resource locks, set the argument to `enable_resource_locks = false`.
  enable_resource_locks = var.enable_resource_locks

  # Tags
  add_tags = merge(var.default_tags, var.default_tags, ) # Tags to be applied to all resources
}
