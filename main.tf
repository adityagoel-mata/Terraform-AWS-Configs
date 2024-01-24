module "security_group" {
  source = "./modules/Security-Group"

  sg_name        = var.sg_name
  sg_description = var.sg_description
  sg_tag_name    = var.sg_tag_name

  # db_sg_name        = var.db_sg_name
  # db_sg_description = var.db_sg_description
  # db_sg_tag_name    = var.db_sg_tag_name
}


module "ec2_instance" {
  source = "./modules/EC2-instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [module.security_group.security_group_id]
  instance_name          = var.instance_name
}

# module "db_instance" {
#   source = "./modules/RDS-instance"
  
#   allocated_storage    = var.allocated_storage
#   db_name              = var.db_name
#   engine               = var.engine
#   engine_version       = var.engine_version
#   instance_class       = var.instance_class
#   username             = var.username
#   password             = var.password
#   parameter_group_name = var.parameter_group_name
#   skip_final_snapshot  = var.skip_final_snapshot
# }