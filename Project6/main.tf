module "k8s_master_ec2_instance" {
  source = "./../modules/EC2-instance"

  ami                    = var.k8s_master_ami
  instance_type          = var.k8s_master_instance_type
  vpc_security_group_ids = [module.k8s_master_ec2_security_group.security_group_id]
  user_data              = var.k8s_master_user_data
  instance_name          = var.k8s_master_instance_name
}


module "k8s_master_ec2_security_group" {
  source = "./../modules/Security-Group"

  sg_name        = var.k8s_master_ec2_sg_name
  sg_description = var.k8s_master_ec2_sg_description
  sg_tag_name    = var.k8s_master_ec2_sg_tag_name
  from_port      = var.k8s_master_ec2_from_port
  to_port        = var.k8s_master_ec2_to_port
  protocol       = var.k8s_master_ec2_protocol 
  cidr_blocks    = var.k8s_master_ec2_cidr_blocks

}


module "k8s_worker_ec2_instance" {
  source = "./../modules/EC2-instance"

  ami                    = var.k8s_worker_ami
  instance_type          = var.k8s_worker_instance_type
  vpc_security_group_ids = [module.k8s_worker_ec2_security_group.security_group_id]
  user_data              = var.k8s_worker_user_data
  instance_name          = var.k8s_worker_instance_name
}


module "k8s_worker_ec2_security_group" {
  source = "./../modules/Security-Group"

  sg_name        = var.k8s_worker_ec2_sg_name
  sg_description = var.k8s_worker_ec2_sg_description
  sg_tag_name    = var.k8s_worker_ec2_sg_tag_name
  from_port      = var.k8s_worker_ec2_from_port
  to_port        = var.k8s_worker_ec2_to_port
  protocol       = var.k8s_worker_ec2_protocol 
  cidr_blocks    = var.k8s_worker_ec2_cidr_blocks

}
