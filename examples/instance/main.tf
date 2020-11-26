#####################################################
# Logdna Instance
# Copyright 2020 IBM
#####################################################

provider "ibm" {
}

data "ibm_resource_group" "logdna_resource_group" {
  name = var.resource_group
}


module "logdna_instance" {
  source  = "terraform-ibm-modules/logdna/ibm//modules/instance"

  service_name        = var.service_name
  resource_group_id   = data.ibm_resource_group.logdna_resource_group.id
  plan                = var.plan
  region              = var.region
  service_endpoints   = var.service_endpoints
  tags                = var.tags
  parameters          = var.parameters
}