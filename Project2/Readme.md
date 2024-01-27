This project should do the following steps:
1. Create an EC2 instance from the EC2 module.
2. Create an SG Group from the SG module. (ingress: 80, 443, 22, egress: all)
3. Attach the SG Group to the EC2 instance.
4. Create an RDS instance.
5. Create an SG Group from the SG module. (ingress: SG from step 2. egress: all)
6. Attach the SG Group to EC2 instance.