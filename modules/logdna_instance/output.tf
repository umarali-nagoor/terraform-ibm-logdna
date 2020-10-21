#####################################################
# Logdna Instance
# Copyright 2020 IBM
#####################################################

output "logdna_instance_id" {
  description = "The ID of the Logdna instance"
  value       = ibm_resource_instance.logdna_instance.id  
}