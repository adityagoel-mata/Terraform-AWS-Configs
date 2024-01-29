#EC2 Launch Template Variables

ec2_lt_name = "tf-ec2-launchTemplate"
ec2_lt_image_id = "ami-05fb0b8c1424f266b"
ec2_lt_instance_type = "t2.micro"

#ASG Variables

asg_ec2_availability_zones = ["us-east-2a"]
asg_ec2_desired_capacity = 1
asg_ec2_max_size = 2
asg_ec2_min_size = 1