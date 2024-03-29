module "vpc" {
  source = "../modules/VPC"

  cidr_block = var.vpc_cidr_block
  name = var.vpc_name
}


module "public_subnet" {
  source            = "../modules/Subnet"

  vpc_id            = module.vpc.vpc_id
  availability_zone = var.public_subnet_availability_zone
  cidr_block        = var.public_subnet_cidr_block
  Name              = var.public_subnet_Name
  
}


module "private_subnet" {
  source            = "../modules/Subnet"

  vpc_id            = module.vpc.vpc_id
  availability_zone = var.private_subnet_availability_zone
  cidr_block        = var.private_subnet_cidr_block
  Name              = var.private_subnet_Name
  
}


module "internet_gateway" {
  source = "../modules/Internet-Gateway"

  vpc_id = module.vpc.vpc_id
  Name   = var.internet_gateway_name
  
}

module "public_route_table" {
  source     = "../modules/Route-Table"

  vpc_id     = module.vpc.vpc_id    #This will by default attach a local GW as per VPC's CIDR
  cidr_block = var.public_route_table_cidr_block
  gateway_id = module.internet_gateway.internet_gateway_id
  Name       = var.public_route_table_Name
}


module "private_route_table" {
  source     = "../modules/Route-Table"

  vpc_id     = module.vpc.vpc_id    #This will by default attach a local GW as per VPC's CIDR
  cidr_block = var.private_route_table_cidr_block
  gateway_id = var.private_route_table_gateway_id
  Name       = var.private_route_table_Name
}


module "public_route_table_association" {
  source         = "../modules/Route-Table-Association"

  subnet_id      = module.public_subnet.subnet_id
  route_table_id = module.public_route_table.route_table_id
}


module "private_route_table_association" {
  source         = "../modules/Route-Table-Association"

  subnet_id      = module.private_subnet.subnet_id
  route_table_id = module.private_route_table.route_table_id
}

