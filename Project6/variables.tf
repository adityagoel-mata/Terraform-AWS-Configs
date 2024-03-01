#k8s_master_EC2 variable declaration
variable "k8s_master_ami" {}
variable "k8s_master_instance_type" {}
#variable "k8s_master_user_data" {}
variable "k8s_master_instance_name" {}


#k8s_master_SG variable declaration
variable "k8s_master_ec2_sg_name" {}
variable "k8s_master_ec2_sg_description" {}
variable "k8s_master_ec2_sg_tag_name" {}
variable "k8s_master_ec2_from_port" {}
variable "k8s_master_ec2_to_port" {}
variable "k8s_master_ec2_protocol" {}
variable "k8s_master_ec2_cidr_blocks" {}


#k8s_worker_EC2 variable declaration
variable "k8s_worker_ami" {}
variable "k8s_worker_instance_type" {}
#variable "k8s_worker_user_data" {}
variable "k8s_worker_instance_name" {}


#k8s_worker_SG variable declaration
variable "k8s_worker_ec2_sg_name" {}
variable "k8s_worker_ec2_sg_description" {}
variable "k8s_worker_ec2_sg_tag_name" {}
variable "k8s_worker_ec2_from_port" {}
variable "k8s_worker_ec2_to_port" {}
variable "k8s_worker_ec2_protocol" {}
variable "k8s_worker_ec2_cidr_blocks" {}