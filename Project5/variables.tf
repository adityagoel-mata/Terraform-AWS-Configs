#VPC Variable declaration
variable "vpc_cidr_block" {}
variable "vpc_name" {}


#Internet Gateway Variable Declaration
variable "internet_gateway_name" {}


#Public Route Table Variable Declaration
variable "public_route_table_cidr_block" {}
variable "public_route_table_Name" {}


#Private Route Table Variable Declaration
variable "private_route_table_cidr_block" {}
variable "private_route_table_gateway_id" {}
variable "private_route_table_Name" {}


# #Public Subnet Variable declaration
variable "public_subnet_availability_zone" {}
variable "public_subnet_cidr_block" {}
# variable "public_subnet_Name" {}


#Private Subnet Variable declaration
variable "private_subnet_availability_zone" {}
variable "private_subnet_cidr_block" {}
# variable "private_subnet_Name" {}


#Launch Template's variable declaration
variable "ec2_lt_name" {}
variable "ec2_lt_image_id" {}
variable "ec2_lt_instance_type" {}


#AutoSclaing Group's variable declaration
variable "asg_ec2_desired_capacity" {}
variable "asg_ec2_max_size" {}
variable "asg_ec2_min_size" {}


#SG variable declaration
variable "ec2_lt_sg_name" {}
variable "ec2_lt_sg_description" {}
variable "ec2_lt_sg_tag_name" {}
variable "ec2_lt_from_port" {}
variable "ec2_lt_to_port" {}
variable "ec2_lt_protocol" {}
variable "ec2_lt_cidr_blocks" {}