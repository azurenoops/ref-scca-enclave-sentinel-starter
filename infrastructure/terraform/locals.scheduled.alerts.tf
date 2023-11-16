# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
SUMMARY: Azure Sentinel Scheduled Alerts
DESCRIPTION: This resource generates Azure Sentinel Scheduled Alerts. All these alerts are based on Zero Trust.
AUTHOR/S: jrspinella
*/

locals {
  scheduled_alerts = {
    "Daixin_IOCs" = {
      name                 = "Daixin IOCs"
      query_frequency      = "P1D"
      query_period         = "P1D"
      severity             = "Medium"
      suppression_duration = "PT1H"
      suppression_enabled  = false
      tactics              = ["Persistence"]
      techniques           = ["None"]
      query                = <<EOF
      let DFE=
      (DeviceFileEvents
      | where SHA256 has_any ("9E42E07073E03BDEA4CD978D9E7B44A9574972818593306BE1F3DCFDEE722238", "19ED36F063221E161D740651E6578D50E0D3CACEE89D27A6EBED4AB4272585BD", "54E3B5A2521A84741DC15810E6FED9D739EB8083CB1FE097CB98B345AF24E939","EC16E2DE3A55772F5DFAC8BF8F5A365600FAD40A244A574CBAB987515AA40CBF", "475D6E80CF4EF70926A65DF5551F59E35B71A0E92F0FE4DD28559A9DEBA60C28")
      | where FolderPath has_any ("rclone-v1.59.2-windows-amd64\\git-log.txt", "rclone-v1.59.2-windows-amd64\\rclone.1", "rclone-v1.59.2-windows-amd64\\rclone.exe", "rclone-v1.59.2-windows-amd64\\README.html", "rclone-v1.59.2-windows-amd64\\README.txt")
      |extend AccountCustomEntity = InitiatingProcessAccountUpn, HostCustomEntity = DeviceName
      )
      ;
      let DPE=
      (DeviceProcessEvents
      |where SHA256 has_any ("9E42E07073E03BDEA4CD978D9E7B44A9574972818593306BE1F3DCFDEE722238", "19ED36F063221E161D740651E6578D50E0D3CACEE89D27A6EBED4AB4272585BD", "54E3B5A2521A84741DC15810E6FED9D739EB8083CB1FE097CB98B345AF24E939","EC16E2DE3A55772F5DFAC8BF8F5A365600FAD40A244A574CBAB987515AA40CBF", "475D6E80CF4EF70926A65DF5551F59E35B71A0E92F0FE4DD28559A9DEBA60C28")
      | where FolderPath has_any ("rclone-v1.59.2-windows-amd64\\git-log.txt", "rclone-v1.59.2-windows-amd64\\rclone.1", "rclone-v1.59.2-windows-amd64\\rclone.exe", "rclone-v1.59.2-windows-amd64\\README.html", "rclone-v1.59.2-windows-amd64\\README.txt")
      | extend AccountCustomEntity = AccountName, HostCustomEntity = DeviceName
      );
      DFE
      | union DPE
      EOF      
      display_name         = "Daixin IOCs"
      description          = <<EOT
      'Identifies IOCs associated with the Daixin ransomware team'

      EOT
      enabled              = true
      create_incident      = true
      entity_mapping = [
        {
          entity_type = "Account"
          field_mapping = [
            {
              column_name = "FullName"
              identifier  = "AccountCustomEntity"
            }
          ]
        },
        {
          entity_type = "Host"
          field_mapping = [
            {
              column_name = "DeviceName"
              identifier  = "HostCustomEntity"
            }
          ]
        }       
      ]
      event_grouping = [
        {
          aggregation_method = "aggregationKind"
        },
        {
          aggregation_method = "SingleAlert"
        }
      ]
      incident_configuration = [
        {
          create_incident = true
          grouping = [
            {
              enabled                 = true
              lookback_duration       = "P1D"
              reopen_closed_incidents = false
              entity_matching_method  = "AllEntities"
              group_by_entities       = []
              group_by_alert_details  = []
              group_by_custom_details = []
            }
          ]
        }
      ]
    }, # End Alert
    "Successful_Signin_from_Anonymous_IP_address" = {
      name                 = "Successful Signin from Anonymous IP address"
      query_frequency      = "PT15M"
      query_period         = "PT15M"
      severity             = "Medium"
      suppression_duration = "PT1H"
      suppression_enabled  = false
      tactics              = ["CredentialAccess", "InitialAccess"]
      techniques           = ["T1133"]
      query                = <<EOF
      SecurityAlert
      | where DisplayName == "Anonymous IP address"
      | extend
          IPAddress = tostring(parse_json(ExtendedProperties)["Client IP Address"]),
          Location = tostring(parse_json(ExtendedProperties)["Client Location"]),
          Id = tostring(parse_json(ExtendedProperties)["Request Id"])
      | join kind=leftouter (union
              (SigninLogs
              | project Id, UserPrincipalName),
              (AADNonInteractiveUserSignInLogs
              | project Id, UserPrincipalName))
          on $left.Id == $right.Id
      | join kind=inner (union(SigninLogs
              | where Status has "0" 
              | project IPAddress, AuthenticationRequirement, UserPrincipalName, UserDisplayName, Status, AppDisplayName, ClientAppUsed), (AADNonInteractiveUserSignInLogs
              | where Status has "0" 
              | project IPAddress, AuthenticationRequirement, UserPrincipalName, UserDisplayName))
          on $left.IPAddress == $right.IPAddress and $left.UserPrincipalName == $right.UserPrincipalName
      | extend Time = bin(TimeGenerated, 1s), Agent = tostring(parse_json(parse_json(Entities)[1]).UserAgent)
      | distinct Time, Location, IPAddress, UserPrincipalName, UserDisplayName, AuthenticationRequirement, Agent
      EOF      
      display_name         = "Successful Signin from Anonymous IP address"
      description          = <<EOT
      'Corralaties Anonymous IP address with successful logins'

      EOT
      enabled              = true
      create_incident      = true
      entity_mapping = [
        {
          entity_type = "Account"
          field_mapping = [
            {
              column_name = "FullName"
              identifier  = "UserDisplayName"
            },
            {
              column_name = "DisplayName"
              identifier  = "UserPrincipalName"
            }
          ]
        },
        {
          entity_type = "IP"
          field_mapping = [
            {
              column_name = "Address"
              identifier  = "IPAddress"
            }
          ]
        }       
      ]
      event_grouping = [
        {
          aggregation_method = "aggregationKind"
        },
        {
          aggregation_method = "SingleAlert"
        }
      ]
      incident_configuration = [
        {
          create_incident = true
          grouping = [
            {
              enabled                 = true
              lookback_duration       = "PT5H"
              reopen_closed_incidents = false
              entity_matching_method  = "Selected"
              group_by_entities       = ["Account", "IP"]
              group_by_alert_details  = []
              group_by_custom_details = []
            }
          ]
        }
      ]
    }, # End Alert
  }
}
