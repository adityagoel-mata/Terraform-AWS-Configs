resource "aws_subnet" "subnet" {
  vpc_id     = var.vpc_id
  availability_zone = var.availability_zone

  tags = {
    Name = var.Name
  }
}