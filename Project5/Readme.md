This project should do the following steps:
1. Create 1 VPC with IPv4 CIDR 10.0.0.0/16.
2. Create 2 public subnets and 2 private subnets in 2 different AZs within the VPC.
3. Create 1 public route table and 1 private route table.
4. Create 1 Internet Gateway. Attach it to the public route table.
5. Attach the respective route tables to respective subnets.
6. Create an ASG with 2 EC2 instances, each running in 1 Public Subnet respectively.
7. Create 2 RDS instances, each running in 1 Private Subnet respectively.
<!-- 6. Create 1 NAT Gateway inside the public subnet.
7. Add a new route in the private route table for NAT gateway. -->
