#ec2 variables

ami           = "ami-05fb0b8c1424f266b"
instance_type = "t2.micro"
instance_name = "tf-ec2-instance1"

#SG variables

sg_name           = "default-sg"
sg_description    = "This allows HTTP and HTTPS requests"
sg_tag_name       = "default-sg"
# db_sg_name        = "tf-db-sg-1"
# db_sg_description = "This only allows traffic from instances having tf-sg-1 as a SG"
# db_sg_tag_name    = "tf-db-sg-1"

#RDS variables

# allocated_storage    = 10
# db_name              = "mydb"
# engine               = "mysql"
# engine_version       = "5.7"
# instance_class       = "db.t3.micro"
# username             = "admin"
# password             = "password"
# parameter_group_name = "default.mysql5.7"
# skip_final_snapshot  = true