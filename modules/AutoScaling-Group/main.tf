resource "aws_autoscaling_group" "autoscaling_group" {
  availability_zones = var.availability_zones
  vpc_zone_identifier = var.vpc_zone_identifier
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id = var.id
  }
}