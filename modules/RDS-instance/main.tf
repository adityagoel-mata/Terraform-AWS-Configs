resource "aws_db_instance" "dbInstance" {           #resource name must only contain AlphaNumeric chars

  allocated_storage    = var.allocated_storage      #In GBs
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  vpc_security_group_ids = var.vpc_security_group_ids

}