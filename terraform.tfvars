#ec2 variables

ami           = "ami-05fb0b8c1424f266b"
host_id       = "757886166871"
instance_type = "t2.micro"
key_name      = "tf-ec2-instance1-key"
instance_name = "tf-ec2-instance1"

#SG variables

sg_name        = "tf-sg-1"
sg_description = "This is a default terraform security group"
sg_tag_name    = "tf-sg-1"

#RDS variables

allocated_storage    = 10
db_name              = "mydb"
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t3.micro"
username             = "admin"
password             = "password"
parameter_group_name = "default.mysql5.7"
skip_final_snapshot  = true