module "ec2_instance" {
  source = "./../modules/EC2-instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [module.ec2_security_group.security_group_id]
  instance_name          = var.instance_name
}

module "mysql_db_instance" {
  source = "./../modules/RDS-instance"

  allocated_storage    = var.allocated_storage      #In GBs
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  vpc_security_group_ids = [module.db_security_group.db_security_group_id]

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

module "db_security_group" {
  source = "./../modules/Security-Group"

  sg_name        = var.db_sg_name
  sg_description = var.db_sg_description
  sg_tag_name    = var.db_sg_tag_name
  from_port      = var.db_from_port
  to_port        = var.db_to_port
  protocol       = var.db_protocol 
  cidr_blocks    = var.db_cidr_blocks

}


