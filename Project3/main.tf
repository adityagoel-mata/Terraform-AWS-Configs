module "ec2_launch_template" {
  source = "./../modules/Launch-Template"

  name          = var.ec2_lt_name
  image_id      = var.ec2_lt_image_id
  instance_type = var.ec2_lt_instance_type
  vpc_security_group_ids = [module.ec2_security_group.security_group_id]
}

module "autoscaling-group" {
  source = "./../modules/AutoScaling-Group"
  
  availability_zones = var.asg_ec2_availability_zones
  desired_capacity   = var.asg_ec2_desired_capacity
  max_size           = var.asg_ec2_max_size
  min_size           = var.asg_ec2_min_size
  id                 = module.ec2_launch_template.launch_template_id

}

module "ec2_security_group" {
  source = "./../modules/Security-Group"

  sg_name        = var.ec2_lt_sg_name
  sg_description = var.ec2_lt_sg_description
  sg_tag_name    = var.ec2_lt_sg_tag_name
  from_port      = var.ec2_lt_from_port
  to_port        = var.ec2_lt_to_port
  protocol       = var.ec2_lt_protocol 
  cidr_blocks    = var.ec2_lt_cidr_blocks

}