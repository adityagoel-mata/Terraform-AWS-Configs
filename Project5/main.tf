module "vpc" {
  source = "../modules/VPC"

  cidr_block = var.vpc_cidr_block
  name = var.vpc_name
}


#Configurations for Public Subnet and its components.
module "public_subnet" {
  source            = "../modules/Subnet"

  count             = 2
  vpc_id            = module.vpc.vpc_id
  availability_zone = var.public_subnet_availability_zone[count.index]
  cidr_block        = var.public_subnet_cidr_block[count.index]
  Name              = "Public-Subnet-${count.index}"

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


module "public_route_table_association" {
  source         = "../modules/Route-Table-Association"
  
  count          = 2
  subnet_id      = module.public_subnet[count.index].subnet_id
  route_table_id = module.public_route_table.route_table_id
}


#Configurations for Private Subnet and its components.
module "private_subnet" {
  source            = "../modules/Subnet"

  count             = 2
  vpc_id            = module.vpc.vpc_id
  availability_zone = var.private_subnet_availability_zone[count.index]
  cidr_block        = var.private_subnet_cidr_block[count.index]
  Name              = "Private-Subnet-${count.index}"

}


module "private_route_table" {
  source     = "../modules/Route-Table"

  vpc_id     = module.vpc.vpc_id    #This will by default attach a local GW as per VPC's CIDR
  cidr_block = var.private_route_table_cidr_block
  gateway_id = var.private_route_table_gateway_id
  Name       = var.private_route_table_Name
}


module "private_route_table_association" {
  source         = "../modules/Route-Table-Association"

  count          = 2
  subnet_id      = module.private_subnet[count.index].subnet_id
  route_table_id = module.private_route_table.route_table_id
}


module "ec2_launch_template" {
  source = "./../modules/Launch-Template"

  name          = var.ec2_lt_name
  image_id      = var.ec2_lt_image_id
  instance_type = var.ec2_lt_instance_type
  vpc_security_group_ids = [module.ec2_security_group.security_group_id]
}


module "autoscaling-group" {
  source = "./../modules/AutoScaling-Group"
  
  vpc_zone_identifier = [module.public_subnet[*].subnet_id]
  desired_capacity    = var.asg_ec2_desired_capacity
  max_size            = var.asg_ec2_max_size
  min_size            = var.asg_ec2_min_size
  id                  = module.ec2_launch_template.launch_template_id
}


module "ec2_security_group" {
  source = "./../modules/Security-Group"

  sg_name        = var.ec2_lt_sg_name
  sg_description = var.ec2_lt_sg_description
  vpc_id         = module.vpc.vpc_id
  sg_tag_name    = var.ec2_lt_sg_tag_name
  from_port      = var.ec2_lt_from_port
  to_port        = var.ec2_lt_to_port
  protocol       = var.ec2_lt_protocol 
  cidr_blocks    = var.ec2_lt_cidr_blocks
}