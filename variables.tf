#EC2 variable declaration

variable "ami" {}
variable "instance_type" {}
variable "instance_name" {}

#SG variable declaration

variable "sg_name" {}
variable "sg_description" {}
variable "sg_tag_name" {}
# variable "db_sg_name" {}
# variable "db_sg_description" {}
# variable "db_sg_tag_name" {}

#RDS variable declaration

# variable "allocated_storage" {}
# variable "db_name" {}
# variable "engine" {}
# variable "engine_version" {}
# variable "instance_class" {}
# variable "username" {}
# variable "password" {}
# variable "parameter_group_name" {}
# variable "skip_final_snapshot" {}