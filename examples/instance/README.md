# Module logdna_instance

This module is used to create a Logdna instance.

## Example Usage
```
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

```

## Inputs

| Name               | Description                                                      | Type         | Default | Required |
|--------------------|------------------------------------------------------------------|:-------------|:------- |:---------|
| service\_name      | A descriptive name used to identify the resource instance        | string       | n/a     | yes      |
| plan               | The name of the plan type supported by service.                  | string       | n/a     | yes      |
| region             | Target location or environment to create the resource instance.  | string       | n/a     | yes      |
| resource\_group    | Name of the resource group                                       | string       | n/a     | yes      |
| service\_endpoints | Possible values are 'public', 'private', 'public-and-private'.   | string       | n/a     | no       |
| tags               | Tags that should be applied to the service                       | list(string) | n/a     | no       |
| parameters         | Arbitrary parameters to create instance                          | map          | n/a     | no       |
