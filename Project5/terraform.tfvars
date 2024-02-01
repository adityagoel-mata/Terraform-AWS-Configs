#VPC Variables
vpc_cidr_block = "10.0.0.0/16"
vpc_name = "tf-VPC"


#Internet Gateway Variables
internet_gateway_name = "tf-igw"


#Public Route Table Variables
public_route_table_cidr_block = "0.0.0.0/0"
public_route_table_Name = "tf-public-route-table"


#Private Route Table Variables
private_route_table_cidr_block = "10.0.0.0/16"
private_route_table_gateway_id = "local"
private_route_table_Name = "tf-private-route-table"


#Public Subnet Variables
public_subnet_availability_zone = ["us-east-2a", "us-east-2b"]
public_subnet_cidr_block = ["10.0.1.0/24", "10.0.2.0/24"]


#Private Subnet Variables
private_subnet_availability_zone = ["us-east-2a", "us-east-2b"]
private_subnet_cidr_block = ["10.0.3.0/24", "10.0.4.0/24"]


#EC2 Launch Template Variables
ec2_lt_name = "tf-ec2-launchTemplate"
ec2_lt_image_id = "ami-05fb0b8c1424f266b"
ec2_lt_instance_type = "t2.micro"


#ASG Variables
asg_ec2_desired_capacity = 2
asg_ec2_max_size = 2
asg_ec2_min_size = 2


#E2 SG variables
ec2_lt_sg_name           = "tf-ec2-lt_sg"
ec2_lt_sg_description    = "This allows HTTP requests"
ec2_lt_sg_tag_name       = "tf-ec2-sg"
ec2_lt_from_port         = 80
ec2_lt_to_port           = 80
ec2_lt_protocol          = "tcp"
ec2_lt_cidr_blocks       = ["0.0.0.0/0"]


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


#DB Security Group variables
db_sg_name           = "tf-db-sg"
db_sg_description    = "This allows requests only from ec2"
db_sg_tag_name       = "tf-db-sg"
db_from_port         = 3306
db_to_port           = 3306
db_protocol          = "tcp"
