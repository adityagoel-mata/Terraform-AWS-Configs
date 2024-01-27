#ec2 variables

ami           = "ami-05fb0b8c1424f266b"
instance_type = "t2.micro"
instance_name = "tf-ec2-instance1"

#SG variables

ec2_sg_name           = "default-sg"
ec2_sg_description    = "This allows HTTP, HTTPS and SSH requests"
ec2_sg_tag_name       = "default-sg"
ec2_from_port         = 80
ec2_to_port           = 80
ec2_protocol          = "tcp"
ec2_cidr_blocks       = ["0.0.0.0/0"]

db_sg_name           = "database-sg"
db_sg_description    = "This allows requests only from defaul-sg"
db_sg_tag_name       = "database-sg"
db_from_port         = 3306
db_to_port           = 3306
db_protocol          = "tcp"
db_cidr_blocks       = ["0.0.0.0/0"]


#DB instance variables

allocated_storage    = 10
db_name              = "mydb"
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t3.micro"
username             = "aditya"
password             = "adityaPassword"
parameter_group_name = "default.mysql5.7"
skip_final_snapshot  = true