# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

/*
  PARAMETERS
  Here are all the variables a user can override.
*/

#################################
# Global Sentinel Configuration
#################################

variable "enable_ueba" {
  description = "Enable User and Entity Behavior Analytics (UEBA)"
  type        = bool
  default     = false
}
