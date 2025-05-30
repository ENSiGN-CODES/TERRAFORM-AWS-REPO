# VPC variables
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"
availability_zone    = "us-west-2"
vpc_name             = "MyVPC"

# EC2 variables
ami_id               = "ami-04999cd8f2624f834"
instance_type        = "t3.micro"
ec2_name             = "HelloWorld"
