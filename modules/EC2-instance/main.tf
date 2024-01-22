resource "aws_instance" "ec2-instance" {

  ami = var.ami
  #host_id = var.host_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name = var.key_name
  tags = {
    Name = var.instance_name
  }

}