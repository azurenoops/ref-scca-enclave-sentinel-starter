# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Machine Learning Alerts
DESCRIPTION: This resource generates Azure Sentinel Machine Learning Alerts.
AUTHOR/S: jrspinella
*/

locals {
  machine_learning_alerts = {
    "Machine_learning_alert_1" = {
      alert_rule_template_guid = "fa118b98-de46-4e94-87f9-8e6d5060b60b"
      enabled                  = true
    },
    "Machine_learning_alert_2" = {
      alert_rule_template_guid = "737a2ce1-70a3-4968-9e90-3e6aca836abf"
      enabled                  = true
    }
  }
}
