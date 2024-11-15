output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.cra_3_vpc.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value = [
    aws_subnet.cra_3_pub1.id,
    aws_subnet.cra_3_pub2.id
  ]
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value = [
    aws_subnet.cra_3_priv1.id,
    aws_subnet.cra_3_priv2.id
  ]
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.cra_3_igw.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.cra_3_nat_gw.id
}

output "elastic_ip" {
  description = "The Elastic IP associated with the NAT Gateway"
  value       = aws_eip.cra_3_eip.public_ip
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.cra_3_sg.id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value = [
    aws_instance.cra-W155.id,
    aws_instance.cra-W156.id,
    aws_instance.cra-A157.id,
    aws_instance.cra-A158.id
  ]
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value = [
    aws_instance.cra-W155.public_ip,
    aws_instance.cra-W156.public_ip
  ]
}

output "instance_private_ip" {
  description = "The private IP address of the EC2 instance"
  value = [
    aws_instance.cra-A157.private_ip,
    aws_instance.cra-A158.private_ip
  ]
}

output "instance_availability_zone" {
  description = "The Availability Zone of the EC2 instance"
  value = [
    aws_instance.cra-W155.availability_zone,
    aws_instance.cra-W156.availability_zone,
    aws_instance.cra-A157.availability_zone,
    aws_instance.cra-A158.availability_zone
  ]
}

output "load_balancer_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.cra_3_alb.dns_name
}

output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = aws_lb_target_group.cra_3_tg.arn
}
