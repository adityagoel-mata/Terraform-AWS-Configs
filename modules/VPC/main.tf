resource "aws_vpc" "vpc" {

  cidr_block = var.cidr_block #"10.0.0.0/16"
  tags       = {
    Name     = var.name
  }
}