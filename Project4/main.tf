module "vpc" {
  source = "./../modules/VPC"

  cidr_block = var.vpc_cidr_block
  name = var.vpc_name
}


module "public_subnet" {
  source = "./../modules/Subnet"

  vpc_id            = [module.vpc.vpc_id]
  availability_zone = var.public_subnet_availability_zone
  Name              = var.public_subnet_Name
  
}


module "private_subnet" {
  source = "./../modules/Subnet"

  vpc_id            = [module.vpc.vpc_id]
  availability_zone = var.private_subnet_availability_zone
  Name              = var.private_subnet_Name
  
}