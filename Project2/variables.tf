#EC2 variable declaration

variable "ami" {}
variable "instance_type" {}
variable "instance_name" {}

#SG variable declaration

variable "ec2_sg_name" {}
variable "ec2_sg_description" {}
variable "ec2_sg_tag_name" {}
variable "ec2_from_port" {}
variable "ec2_to_port" {}
variable "ec2_protocol" {}
variable "ec2_cidr_blocks" {}

variable "db_sg_name" {}
variable "db_sg_description" {}
variable "db_sg_tag_name" {}
variable "db_from_port" {}
variable "db_to_port" {}
variable "db_protocol" {}
variable "db_security_groups" {}


#DB instance variable declaration

variable "allocated_storage" {}
variable "db_name" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "skip_final_snapshot" {}