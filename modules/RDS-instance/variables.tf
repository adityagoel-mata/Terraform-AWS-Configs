variable "allocated_storage" {}
variable "db_name" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "skip_final_snapshot" {}
variable "db_subnet_group_name" {
  default = "default"
}
variable "vpc_security_group_ids" {}