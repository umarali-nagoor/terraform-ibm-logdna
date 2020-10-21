# Module logdna resource key 

This module is used to create a logdna key

## Example Usage
```
provider "ibm" {
}

data "ibm_resource_group" "logdna" {
  name = var.resource_group
}

module "logdna" {
  source = "../../modules/logdna_instance"

  service_name        = var.service_name
  resource_group_id   = data.ibm_resource_group.logdna.id
  plan                = var.plan
  region              = var.region
  service_endpoints   = var.service_endpoints
  tags                = var.tags
  parameters          = var.parameters
}

module "logdna_key" {
  source = "../../modules/logdna_instance_key"

  resource_key_name       = var.resource_key_name
  resource_instance_id    = module.logdna.logdna_instance_id  
  role                    = var.role
  tags                    = var.key_tags
  parameters              = var.key_parameters
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs


| Name               | Description                                                      | Type         | Default | Required |
|--------------------|------------------------------------------------------------------|:-------------|:------- |:---------|
| service\_name      | A descriptive name used to identify the resource instance        | string       | n/a     | yes      |
| resource\_key\_name| A descriptive name used to identify the resource key             | string       | n/a     | yes      |
| role               | Name of the user role.                                           | string       | n/a     | yes      |
| plan               | The name of the plan type supported by service.                  | string       | n/a     | yes      |
| region             | Target location or environment to create the resource instance.  | string       | n/a     | yes      |
| resource\_group    | Name of the resource group                                       | string       | n/a     | yes      |
| service\_endpoints | Possible values are 'public', 'private', 'public-and-private'.   | string       | n/a     | no       |
| tags               | Tags that should be applied to the service                       | list(string) | n/a     | no       |
| parameters         | Arbitrary parameters to create instance                          | map          | n/a     | no       |
| key\_tags          | Tags that should be applied to the service key                   | list(string) | n/a     | no       |
| key\_parameters    | Arbitrary parameters to create instance key                      | map          | n/a     | no       |
