<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.cra_3_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.cra-A157](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.cra-A158](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.cra-W155](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.cra-W156](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.cra_3_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_lb.cra_3_alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.cra_3_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.cra_3_tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group_attachment.cra_3_attach_w155](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment) | resource |
| [aws_lb_target_group_attachment.cra_3_attach_w156](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment) | resource |
| [aws_nat_gateway.cra_3_nat_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.cra_3_priv_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.cra_3_pub_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.cra_3_priv1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.cra_3_priv2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.cra_3_pub1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.cra_3_pub2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.cra_3_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.cra_3_priv1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.cra_3_priv2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.cra_3_pub1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.cra_3_pub2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.cra_3_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_cra_A157"></a> [ami\_cra\_A157](#input\_ami\_cra\_A157) | AMI for CRA-A157 instance | `string` | `"ami-0eddb4a4e7d846d6f"` | no |
| <a name="input_ami_cra_A158"></a> [ami\_cra\_A158](#input\_ami\_cra\_A158) | AMI for CRA-A158 instance | `string` | `"ami-0eddb4a4e7d846d6f"` | no |
| <a name="input_ami_cra_W155"></a> [ami\_cra\_W155](#input\_ami\_cra\_W155) | AMI for CRA-W155 instance | `string` | `"ami-0084a47cc718c111a"` | no |
| <a name="input_ami_cra_W156"></a> [ami\_cra\_W156](#input\_ami\_cra\_W156) | AMI for CRA-W156 instance | `string` | `"ami-0084a47cc718c111a"` | no |
| <a name="input_availability_zone_A157"></a> [availability\_zone\_A157](#input\_availability\_zone\_A157) | Availability zone for CRA-A157 | `string` | `"eu-central-1a"` | no |
| <a name="input_availability_zone_A158"></a> [availability\_zone\_A158](#input\_availability\_zone\_A158) | Availability zone for CRA-A158 | `string` | `"eu-central-1b"` | no |
| <a name="input_availability_zone_W155"></a> [availability\_zone\_W155](#input\_availability\_zone\_W155) | Availability zone for CRA-W155 | `string` | `"eu-central-1a"` | no |
| <a name="input_availability_zone_W156"></a> [availability\_zone\_W156](#input\_availability\_zone\_W156) | Availability zone for CRA-W156 | `string` | `"eu-central-1b"` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | Availability zones for the subnets | `list(string)` | <pre>[<br/>  "eu-central-1a",<br/>  "eu-central-1b"<br/>]</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type for All instances | `string` | `"t2.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key pair name | `string` | `"mse-svh105"` | no |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | CIDR blocks for the private subnets | `list(string)` | <pre>[<br/>  "10.150.12.0/24",<br/>  "10.150.13.0/24"<br/>]</pre> | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | CIDR blocks for the public subnets | `list(string)` | <pre>[<br/>  "10.150.10.0/24",<br/>  "10.150.11.0/24"<br/>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"eu-central-1"` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | Security group ID for All instances | `string` | `"aws_security_group.cra_3_sg.id"` | no |
| <a name="input_subnet_id_A157"></a> [subnet\_id\_A157](#input\_subnet\_id\_A157) | Subnet ID for CRA-A157 instance | `string` | `"aws_subnet.cra_3_priv1.id"` | no |
| <a name="input_subnet_id_A158"></a> [subnet\_id\_A158](#input\_subnet\_id\_A158) | Subnet ID for CRA-A158 instance | `string` | `"aws_subnet.cra_3_priv2.id"` | no |
| <a name="input_subnet_id_W155"></a> [subnet\_id\_W155](#input\_subnet\_id\_W155) | Subnet ID for CRA-W155 instance | `string` | `"aws_subnet.cra_3_pub1.id"` | no |
| <a name="input_subnet_id_W156"></a> [subnet\_id\_W156](#input\_subnet\_id\_W156) | Subnet ID for CRA-W156 instance | `string` | `"aws_subnet.cra_3_pub2.id"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the resources | `map(string)` | <pre>{<br/>  "alb": "CRA-3-ALB",<br/>  "eip": "CRA-3_EIP",<br/>  "igw": "Cra-3-IGW",<br/>  "nat_gw": "Cra-3_NAT_GW",<br/>  "priv_rt": "Cra-3_Priv_RT",<br/>  "private_sub1": "Cra-3-Priv1",<br/>  "private_sub2": "Cra-3-Priv2",<br/>  "pub_rt": "Cra-3_Pub_RT",<br/>  "public_sub1": "Cra-3-Pub1",<br/>  "public_sub2": "Cra-3-Pub2",<br/>  "security_group_id": "aws_security_group.cra_3_sg.id",<br/>  "sg": "CRA-3-SG",<br/>  "subnet_id_A156": "aws_subnet.cra_3_pub2.id",<br/>  "subnet_id_W155": "aws_subnet.cra_3_pub1.id",<br/>  "subnet_id_W157": "aws_subnet.cra_3_priv1.id",<br/>  "subnet_id_W158": "aws_subnet.cra_3_priv2.id",<br/>  "tg": "CRA-3-TG",<br/>  "vpc": "Cra-3-VPC"<br/>}</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for the VPC | `string` | `"10.150.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elastic_ip"></a> [elastic\_ip](#output\_elastic\_ip) | The Elastic IP associated with the NAT Gateway |
| <a name="output_instance_availability_zone"></a> [instance\_availability\_zone](#output\_instance\_availability\_zone) | The Availability Zone of the EC2 instance |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The ID of the EC2 instance |
| <a name="output_instance_private_ip"></a> [instance\_private\_ip](#output\_instance\_private\_ip) | The private IP address of the EC2 instance |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | The public IP address of the EC2 instance |
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | The ID of the Internet Gateway |
| <a name="output_load_balancer_dns_name"></a> [load\_balancer\_dns\_name](#output\_load\_balancer\_dns\_name) | DNS name of the ALB |
| <a name="output_nat_gateway_id"></a> [nat\_gateway\_id](#output\_nat\_gateway\_id) | The ID of the NAT Gateway |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | The IDs of the private subnets |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | The IDs of the public subnets |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | The ID of the security group |
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | ARN of the Target Group |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->