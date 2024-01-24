resource "aws_instance" "ec2-instance" {

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
   tags = {
    Name                 = var.instance_name
  }

}