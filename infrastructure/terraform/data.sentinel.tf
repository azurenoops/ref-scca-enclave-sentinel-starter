# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  DATA
  Here are all the data sources used in the landing zone.
*/

# Get the current Azure Client Configuration
data "azurerm_client_config" "root" {}

# Security Data Source Lookups
data "azurerm_log_analytics_workspace" "sec_log_analytics" {
  provider            = azurerm.security
  name                = var.existing_sec_laws_name
  resource_group_name = var.existing_sec_laws_rgname
}