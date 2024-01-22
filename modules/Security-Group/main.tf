resource "aws_security_group" "tf-sg-1" {
  name = "tf-sg-1"
  description = "Sample security group for terraform"
  #vpc_id = ""    #Not mentioning it sets to the default vpc

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
    #ipv6_cidr_blocks = ["::/0"]

  }

  tags = {
    Name = "tf-sg-1"
  }

}