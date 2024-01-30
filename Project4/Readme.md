This project should do the following steps:
1. Create 1 VPC with IPv4 CIDR 10.0.0.0/16.
2. Create 1 public subnet and 1 private subnet in different AZ within the VPC.
3. Create 1 public route table and 1 private route table.
4. Create 1 Internet Gateway. Attach it to the public route table.
5. Attach the respective route tables to respective subnets.
6. Create 1 NAT Gateway inside the public subnet.
7. Add a new route in the private route table for NAT gateway.
