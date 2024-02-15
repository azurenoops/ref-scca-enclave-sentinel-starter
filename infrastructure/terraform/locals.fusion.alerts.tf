# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Fusion Alerts
DESCRIPTION: This resource generates Azure Sentinel Fusion Alerts.
AUTHOR/S: jrspinella
*/

locals {
  fusion_alerts = {
    "Fusion_alert_1" = {
      alert_rule_template_guid = "f71aba3d-28fb-450b-b192-4e76a83015c8"
      enabled                  = true
    }
  }
}
