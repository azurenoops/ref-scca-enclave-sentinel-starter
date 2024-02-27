# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Microsoft Incident Alerts
DESCRIPTION: This resource generates Azure Sentinel Microsoft Incident Alerts.
AUTHOR/S: jrspinella
*/

locals {
  microsoft_incident_alerts = {
    "Azure Active Directory Identity Protection alerts" = {
      description              = "Create incidents based on Azure Active Directory Identity Protection alerts"
      display_name             = "Create incidents based on all alerts generated in Azure Active Directory Identity Protection"
      product_filter           = "Azure Active Directory Identity Protection"
      severity_filter          = ["High"]
      alert_rule_template_guid = "532c1811-79ee-4d9f-8d4d-6304c840daa1"
      enabled                  = true
    },
    "Azure Security Center alerts" = {
      description              = "Create incidents based on Azure Security Center alerts"
      display_name             = "Create incidents based on all alerts generated in Azure Security Center"
      product_filter           = "Azure Security Center"
      severity_filter          = ["High"]
      alert_rule_template_guid = "90586451-7ba8-4c1e-9904-7d1b7c3cc4d6"
      enabled                  = true
    },
    "Azure Advanced Threat Protection alerts" = {
      description              = "Create incidents based on Azure Advanced Threat Protection alerts"
      display_name             = "Create incidents based on all alerts generated in Azure Advanced Threat Protection"
      product_filter           = "Azure Advanced Threat Protection"
      severity_filter          = ["High"]
      alert_rule_template_guid = "40ba9493-4183-4eee-974f-87fe39c8f267"
      enabled                  = true
    },
    "Microsoft Cloud App Security alerts" = {
      description              = "Create incidents based on Microsoft Cloud App Security alerts"
      display_name             = "Create incidents based on all alerts generated in Microsoft Cloud App Security"
      product_filter           = "Microsoft Cloud App Security"
      severity_filter          = ["High"]
      alert_rule_template_guid = "b3cfc7c0-092c-481c-a55b-34a3979758cb"
      enabled                  = true
    }
  }
}
