#Security Group variables
variable "sg_name" {}
variable "sg_description" {}
variable "vpc_id" {
  default = null
}
variable "sg_tag_name" {}
variable "from_port" {}
variable "to_port" {}
variable "protocol" {}
variable "cidr_blocks" {
  default = null
}
variable "security_groups" {
  default = null
}
