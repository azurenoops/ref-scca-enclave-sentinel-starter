data "azurerm_log_analytics_workspace" "loganalytics" {
  provider            = azurerm.hub
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_rg
}

data "azurerm_storage_account" "storage_account" {
  provider            = azurerm.hub
  name                = var.log_analytics_storage_account_name
  resource_group_name = var.log_analytics_workspace_rg
}
