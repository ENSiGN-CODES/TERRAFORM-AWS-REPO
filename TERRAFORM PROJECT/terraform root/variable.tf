# VPC variables
variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "vpc_name" {
  type = string
}

# EC2 variables
variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ec2_name" {
  type = string
}
