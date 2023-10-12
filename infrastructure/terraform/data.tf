data "azurerm_log_analytics_workspace" "loganalytics" {
    name                = var.log_analytics_workspace_name
    resource_group_name = var.log_analytics_workspace_rg
}