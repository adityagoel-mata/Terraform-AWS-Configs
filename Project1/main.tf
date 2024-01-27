module "ec2_instance" {
  source = "./../modules/EC2-instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [module.ec2_security_group.security_group_id]
  instance_name          = var.instance_name
}

module "ec2_security_group" {
  source = "./../modules/Security-Group"

  sg_name        = var.ec2_sg_name
  sg_description = var.ec2_sg_description
  sg_tag_name    = var.ec2_sg_tag_name
  from_port      = var.ec2_from_port
  to_port        = var.ec2_to_port
  protocol       = var.ec2_protocol 
  cidr_blocks    = var.ec2_cidr_blocks

}