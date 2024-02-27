
variable "ueba_data_sources" {
  description = "List of UEBA (User and Entity Behavior Analytics) data sources."
  type        = list(string) 
}

variable "ueba_entity_providers" {
  description = "List of UEBA (User and Entity Behavior Analytics) entity providers."
  type        = list(string) 
}