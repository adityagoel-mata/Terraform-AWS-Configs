module "security_group" {
  source = "./modules/Security-Group"

  sg_name        = var.sg_name
  sg_description = var.sg_description
  sg_tag_name    = var.sg_tag_name

}

module "ec2_instance" {
  source = "./modules/EC2-instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.default-sg-group.id]
  instance_name          = var.instance_name
}
