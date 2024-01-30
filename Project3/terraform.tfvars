#EC2 Launch Template Variables

ec2_lt_name = "tf-ec2-launchTemplate"
ec2_lt_image_id = "ami-05fb0b8c1424f266b"
ec2_lt_instance_type = "t2.micro"

#ASG Variables

asg_ec2_availability_zones = ["us-east-2a"]
asg_ec2_desired_capacity = 1
asg_ec2_max_size = 2
asg_ec2_min_size = 1

#SG variables

ec2_lt_sg_name           = "tf-ec2-lt_sg"
ec2_lt_sg_description    = "This allows HTTP requests"
ec2_lt_sg_tag_name       = "tf-ec2-sg"
ec2_lt_from_port         = 80
ec2_lt_to_port           = 80
ec2_lt_protocol          = "tcp"
ec2_lt_cidr_blocks       = ["0.0.0.0/0"]