#####################################################
# Logdna  Instance
# Copyright 2020 IBM
#####################################################

resource "ibm_resource_instance" "logdna_instance" {

  name              = var.service_name
  service           = "logdna"
  plan              = var.plan
  location          = var.region
  resource_group_id = var.resource_group_id
  tags              = (var.tags != null ? var.tags : [])
  parameters        = (var.parameters != null ? var.parameters : {})
  service_endpoints = (var.service_endpoints != "" ? var.service_endpoints : null)

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}
