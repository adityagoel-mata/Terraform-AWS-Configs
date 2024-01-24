#ec2 variables

ami           = "ami-05fb0b8c1424f266b"
instance_type = "t2.micro"
instance_name = "tf-ec2-instance1"

#SG variables

sg_name           = "default-sg"
sg_description    = "This allows HTTP, HTTPS and SSH requests"
sg_tag_name       = "default-sg"
