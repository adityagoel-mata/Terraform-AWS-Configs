module "ec2_launch_template" {
  source = "./../modules/Launch-Template"

  name          = var.ec2_lt_name
  image_id      = var.ec2_lt_image_id
  instance_type = var.ec2_lt_instance_type
}

module "autoscaling-group" {
  source = "./../modules/AutoScaling-Group"
  
  availability_zones = var.asg_ec2_availability_zones
  desired_capacity   = var.asg_ec2_desired_capacity
  max_size           = var.asg_ec2_max_size
  min_size           = var.asg_ec2_min_size
  id                 = module.ec2_launch_template.launch_template_id
  version            = var.asg_lt_version

}