variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.150.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.150.10.0/24", "10.150.11.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.150.12.0/24", "10.150.13.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for the subnets"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "region" {
  description = "AWS region"
  default     = "eu-central-1"
}

variable "ami_cra_W155" {
  description = "AMI for CRA-W155 instance"
  type        = string
  default     = "ami-0084a47cc718c111a"
}

variable "ami_cra_W156" {
  description = "AMI for CRA-W156 instance"
  type        = string
  default     = "ami-0084a47cc718c111a"
}

variable "ami_cra_A157" {
  description = "AMI for CRA-A157 instance"
  type        = string
  default     = "ami-0eddb4a4e7d846d6f"
}

variable "ami_cra_A158" {
  description = "AMI for CRA-A158 instance"
  type        = string
  default     = "ami-0eddb4a4e7d846d6f"
}

variable "instance_type" {
  description = "Instance type for All instances"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone_W155" {
  description = "Availability zone for CRA-W155"
  type        = string
  default     = "eu-central-1a"
}

variable "availability_zone_W156" {
  description = "Availability zone for CRA-W156"
  type        = string
  default     = "eu-central-1b"
}

variable "availability_zone_A157" {
  description = "Availability zone for CRA-A157"
  type        = string
  default     = "eu-central-1a"
}

variable "availability_zone_A158" {
  description = "Availability zone for CRA-A158"
  type        = string
  default     = "eu-central-1b"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "mse-svh105"
}

variable "subnet_id_W155" {
  description = "Subnet ID for CRA-W155 instance"
  type        = string
  default = "aws_subnet.cra_3_pub1.id"
}

variable "subnet_id_W156" {
  description = "Subnet ID for CRA-W156 instance"
  type        = string
  default = "aws_subnet.cra_3_pub2.id"
}

variable "subnet_id_A157" {
  description = "Subnet ID for CRA-A157 instance"
  type        = string
  default = "aws_subnet.cra_3_priv1.id"
}

variable "subnet_id_A158" {
  description = "Subnet ID for CRA-A158 instance"
  type        = string
  default = "aws_subnet.cra_3_priv2.id"
}

variable "security_group_id" {
  description = "Security group ID for All instances"
  type        = string
  default = "aws_security_group.cra_3_sg.id"
}


variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default = {
    vpc               = "Cra-3-VPC"
    public_sub1       = "Cra-3-Pub1"
    public_sub2       = "Cra-3-Pub2"
    private_sub1      = "Cra-3-Priv1"
    private_sub2      = "Cra-3-Priv2"
    igw               = "Cra-3-IGW"
    pub_rt            = "Cra-3_Pub_RT"
    priv_rt           = "Cra-3_Priv_RT"
    sg                = "CRA-3-SG"
    eip               = "CRA-3_EIP"
    nat_gw            = "Cra-3_NAT_GW"
    subnet_id_W155    = "aws_subnet.cra_3_pub1.id"
    subnet_id_A156    = "aws_subnet.cra_3_pub2.id"
    subnet_id_W157    = "aws_subnet.cra_3_priv1.id"
    subnet_id_W158    = "aws_subnet.cra_3_priv2.id"
    security_group_id = "aws_security_group.cra_3_sg.id"

  }
}


