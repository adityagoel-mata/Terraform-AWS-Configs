data "aws_security_group" "default-sg-group" {
  filter {
    name = "tag:Name"
    values = [var.sg_name]
  }
}