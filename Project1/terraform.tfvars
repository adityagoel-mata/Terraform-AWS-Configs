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