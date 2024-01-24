resource "aws_security_group" "tf-sg-1" {
  name = var.sg_name
  description = var.sg_description
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

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



# resource "aws_security_group" "tf-db-sg-1" {
#   name = var.db_sg_name
#   description = var.db_sg_description
  
#   ingress {
#     from_port = 3306
#     to_port = 3306
#     protocol = "tcp"
#     security_groups = [ aws_security_group.tf-sg-1.id ]

#   }

#   egress {
#     from_port = 0
#     to_port = 0
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]

#   }

#   tags = {
#     Name = var.db_sg_tag_name
#   }

# }