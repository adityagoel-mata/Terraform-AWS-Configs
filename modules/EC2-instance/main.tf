resource "aws_instance" "ec2-instance" {

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data              = var.user_data
  tags = {
    Name                 = var.instance_name
  }

}