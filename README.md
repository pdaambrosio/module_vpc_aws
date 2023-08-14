# module_vpc_aws

- Terraform module to create VPC on AWS
- Example of use see this repository: [atlantis_terraform](https://github.com/pdaambrosio/atlantis_terraform)

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 enable_dns_hostnames  = true
	 enable_dns_support  = true
	 extra_tags  = {}
	 map_public_ip_on_launch  = false
	 vpc_cidr  = "10.0.0.0/16"
	 vpc_name  = "instance_vpc"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_vpc.vpc_network](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Whether DNS hostnames are enabled | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | Whether DNS support is enabled | `bool` | `true` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | extra tags to add to the instance | `map(any)` | `{}` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | Whether resources created in the VPC get public IP addresses | `bool` | `false` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block of the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC | `string` | `"instance_vpc"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->