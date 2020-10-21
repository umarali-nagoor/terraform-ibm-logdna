#####################################################
# logdna instance key
# Copyright 2020 IBM
#####################################################

output "logdna_key_id" {
  description = "The ID of the logdna key"
  value       = ibm_resource_key.logdnaKey.id 
}
