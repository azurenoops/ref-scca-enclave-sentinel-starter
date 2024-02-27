# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Sentinel Configuration
#################################

variable "data_connectors" {
  description = "(Optional) The list of data connectors to enable for the Azure Security Center Data Connector. Defaults to ['AzureActiveDirectory']."
  type        = list(string)
}
