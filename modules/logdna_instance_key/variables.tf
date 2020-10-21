#####################################################
# logdna Key Instance
# Copyright 2020 IBM
#####################################################

variable "resource_key_name" {
    description = "Name of the instance key"
    type        = string
}

variable "role" {
    description = "plan type"
    type        = string
}

variable "resource_instance_id" {
    description = "ID of the sysdig resource instance to attach"
    type        = string
    default     = null
}

variable "tags" {
  type        = list(string)
  description = "Tags that should be applied to the service"
  default     = null
}

variable "parameters" {
  type        = map
  description = "Arbitrary parameters to create instance. "
  default     = null
}


