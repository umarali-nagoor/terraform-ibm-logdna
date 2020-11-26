#####################################################
# logdna instance key
# Copyright 2020 IBM
#####################################################
resource "ibm_resource_key" "logdnaKey" {
	name                  = var.resource_key_name
    role                  = var.role
	resource_instance_id  = (var.resource_instance_id != null ? var.resource_instance_id : null)
	tags                  = (var.tags != null ? var.tags : [])
    parameters            = (var.parameters != null ? var.parameters : {})
}

