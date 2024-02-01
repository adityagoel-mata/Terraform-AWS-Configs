#VPC Variables
vpc_cidr_block = "10.0.0.0/16"
vpc_name = "tf-VPC"

# #Internet Gateway Variables
# internet_gateway_name = "tf-igw"

# #Public Route Table Variables
# public_route_table_cidr_block = "0.0.0.0/0"
# public_route_table_Name = "tf-public-route-table"

# #Private Route Table Variables
# private_route_table_cidr_block = "10.0.0.0/16"
# private_route_table_gateway_id = "local"
# private_route_table_Name = "tf-private-route-table"

#Public Subnet Variables
# public_subnet_count = 2
public_subnet_availability_zone = ["us-east-2a", "us-east-2b"]
public_subnet_cidr_block = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnet_Name = ["Public-Subnet0", "Public-Subnet1"]

# #Private Subnet Variables
# private_subnet_availability_zone = "us-east-2b"
# private_subnet_cidr_block = "10.0.2.0/24"
# private_subnet_Name = "Private-Subnet1"
