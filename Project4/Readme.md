This project should do the following steps:
1. Create a VPC with IPv4 CIDR 10.0.0.0/16.
2. The VPC should have 2 AZs.
3. Both AZs should have 1 public subnet and 1 private subnet.
3a. To create Public and Private subnets, we create 2 Route table and 1 Internet Gateway.
3b. We assign IG to a route table. This route table is attached to the Public Subnet.
3c. We attach the empty (local) route table to the Private Subnet.
4. Create one NAT Gateway