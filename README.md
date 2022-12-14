# Alkira Internet Exit Connector
This module makes it easy to provision an [Alkira Internet Exit Connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_internet_exit).

## Basic Usage
```hcl
module "inet_exit" {
  source = "alkiranet/connector-internet-exit/alkira"

  name         = "internet-east"
  cxp          = "US-EAST-2"
  segment      = "business"
  group        = "www"
  billing_tags = ["network", "security"]

}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.9.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.9.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alkira_connector_internet_exit.connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_internet_exit) | resource |
| [alkira_billing_tag.tag](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/billing_tag) | data source |
| [alkira_group.group](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/group) | data source |
| [alkira_segment.segment](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/segment) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_tags"></a> [billing\_tags](#input\_billing\_tags) | List of billing tag names to apply to connector | `list(string)` | `[]` | no |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira - CXPs to add connector to | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the connector | `string` | `"Created by Terraform"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Status of connector; Default is true | `bool` | `true` | no |
| <a name="input_group"></a> [group](#input\_group) | Alkira - group to add connector to | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of cloud network and Alkira connector | `string` | n/a | yes |
| <a name="input_public_ip_number"></a> [public\_ip\_number](#input\_public\_ip\_number) | Number of public IPs for connector; Default is 2 | `number` | `2` | no |
| <a name="input_segment"></a> [segment](#input\_segment) | Alkira - segment to add connector to | `string` | n/a | yes |
| <a name="input_traffic_distribution_algorithm"></a> [traffic\_distribution\_algorithm](#input\_traffic\_distribution\_algorithm) | Algorithm used for traffic distribution | `string` | `"HASHING"` | no |
| <a name="input_traffic_distribution_algorithm_attribute"></a> [traffic\_distribution\_algorithm\_attribute](#input\_traffic\_distribution\_algorithm\_attribute) | Attribute of algorithm used for traffic distribution | `string` | `"DEFAULT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connector_id"></a> [connector\_id](#output\_connector\_id) | ID of connector |
| <a name="output_implicit_group_id"></a> [implicit\_group\_id](#output\_implicit\_group\_id) | ID of implicit group automatically created with connector |
<!-- END_TF_DOCS -->