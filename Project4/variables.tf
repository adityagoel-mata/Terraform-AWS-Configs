#VPC Variable declaration
variable "vpc_cidr_block" {}
variable "vpc_name" {}

#Public Route Table Variable Declaration
variable "public_route_table_cidr_block" {}
variable "public_route_table_gateway_id" {}
variable "public_route_table_Name" {}

#Private Route Table Variable Declaration
variable "private_route_table_cidr_block" {}
variable "private_route_table_gateway_id" {}
variable "private_route_table_Name" {}

#Public Subnet Variable declaration
variable "public_subnet_availability_zone" {}
variable "public_subnet_cidr_block" {}
variable "public_subnet_Name" {}

#Private Subnet Variable declaration
variable "private_subnet_availability_zone" {}
variable "private_subnet_cidr_block" {}
variable "private_subnet_Name" {}