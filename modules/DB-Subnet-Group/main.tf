resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.name
  subnet_ids = var.subnet_ids#[aws_subnet.frontend.id, aws_subnet.backend.id]

  tags = {
    Name = var.Name #"My DB subnet group"
  }
}