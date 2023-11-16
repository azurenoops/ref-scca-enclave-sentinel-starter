# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Playbooks
DESCRIPTION: This resource generates Azure Sentinel playbooks.
AUTHOR/S: jrspinella
*/

locals {
  automation_rules = {
    "Auto_Close_Signin_Alerts" = {
      name          = "Auto Close Signin Alerts"
      display_name  = "Auto Close Signin Alerts"
      order         = 1
      triggers_on   = "Incidents"
      triggers_when = "Created"
      condition_json = [
        {
          conditionProperties : {
            operator : "Equals",
            propertyName : "IncidentProviderName",
            propertyValues : [
              "All"
            ]
          },
          conditionType : "Property"
        },
        {
          conditionProperties : {
            operator : "NotContains",
            propertyName : "IncidentRelatedAnalyticRuleIds",
            propertyValues : [
              "0000"
            ]
          },
          conditionType : "Property"
        }
      ]
      action_incident = {
        order                  = 1
        status                 = "Closed"
        classification         = "BenignPositive_SuspiciousButExpected"
        classification_comment = "This alert will be used as telemetry for another alert."
      }
    }
  }
}
