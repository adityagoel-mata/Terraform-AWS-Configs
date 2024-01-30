resource "aws_launch_template" "launch_template" {
  name          = var.name
  image_id      = var.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

}