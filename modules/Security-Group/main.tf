resource "aws_security_group" "security_group" {
  name = var.sg_name
  description = var.sg_description
  
  ingress {
    from_port = var.from_port
    to_port = var.to_port
    protocol = var.protocol
    cidr_blocks = var.cidr_blocks
    security_groups = var.security_groups

  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.sg_tag_name
  }

}
