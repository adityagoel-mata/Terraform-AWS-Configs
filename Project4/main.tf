module "vpc" {
  source = "./../modules/VPC"

  cidr_block = var.vpc_cidr_block
  name = var.vpc_name
}


module "public_route_table" {
  source = "./../modules/Route-Table"

  vpc_id = module.vpc.vpc_id
  cidr_block = var.public_route_table_cidr_block
  gateway_id = var.public_route_table_gateway_id
  Name = var.public_route_table_Name
}


module "private_route_table" {
  source = "./../modules/Route-Table"

  vpc_id = module.vpc.vpc_id
  cidr_block = var.private_route_table_cidr_block
  gateway_id = var.private_route_table_gateway_id
  Name = var.private_route_table_Name
}


module "public_subnet" {
  source = "./../modules/Subnet"

  vpc_id            = module.vpc.vpc_id
  availability_zone = var.public_subnet_availability_zone
  cidr_block        = var.public_subnet_cidr_block
  Name              = var.public_subnet_Name
  
}


module "private_subnet" {
  source = "./../modules/Subnet"

  vpc_id            = module.vpc.vpc_id
  availability_zone = var.private_subnet_availability_zone
  cidr_block        = var.private_subnet_cidr_block
  Name              = var.private_subnet_Name
  
}