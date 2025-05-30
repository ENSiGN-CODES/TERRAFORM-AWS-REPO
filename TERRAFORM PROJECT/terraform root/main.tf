module "VPC" {
  source              = "./modules/VPC"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  vpc_name            = var.vpc_name
}

module "EC2" {
  source         = "./modules/EC2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  ec2_name       = var.ec2_name
}
