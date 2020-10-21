#####################################################
# logdna Instance
# Copyright 2020 IBM
#####################################################

variable "resource_group" {
    description = "Enter Name of the resource group"
    type        = string
}

variable "service_name" {
    description = "Enter Name of the sysdig instance"
    type        = string
}

variable "plan" {
    description = "Enter plan type"
    type        = string
}

variable "region" {
    description = " Enter Region for provisioning"
    type        = string
}

variable "service_endpoints" {
    description = "Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'."
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