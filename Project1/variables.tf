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
