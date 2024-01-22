module "security_group" {
  source = "./modules/Security-Group"

  sg_name = var.sg_name
  sg_description = var.sg_description
  sg_tag_name = var.sg_tag_name

}


module "ec2_instance" {
  source = "./modules/EC2-instance"

  ami = var.ami
  host_id = var.host_id
  instance_type = var.instance_type
  vpc_security_group_ids = [module.security_group.security_group_id]
  key_name = var.key_name
  instance_name = var.instance_name

}
