# IBM logdna Terraform Module

This is a collection of modules that make it easier to provision a logdna on IBM Cloud Platform:
* [logdna Instance](modules/logdna_instance)
* [logdna Instance Key](modules/logdna_instance_key)

## Compatibility

This module is meant for use with Terraform 0.12. 

## Usage

Full examples are in the [examples](./examples/) folder, but basic usage is as follows for creation of logdna instance & key:

```hcl
provider "ibm" {
}

data "ibm_resource_group" "logdna" {
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

module "logdna_instance-key" {
  source  = "terraform-ibm-modules/logdna/ibm//modules/instance-key"

  resource_key_name       = var.resource_key_name
  resource_instance_id    = module.logdna.logdna_instance_id  
  role                    = var.role
  tags                    = var.key_tags
  parameters              = var.key_parameters
}

```

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) 0.12
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) 

## Install

### Terraform

Be sure you have the correct Terraform version (0.12), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) 
