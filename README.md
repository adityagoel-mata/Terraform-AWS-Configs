**Author:** Aditya Goel 

This repository can be used to implement **Infrastructure-as-Code (IaC)** on AWS using Terraform.

Folder Structure:
1. **./modules:** Generalized template to set up various AWS services.
2. **./Project1 to ./ProjectN**: Different IaC Projects with increasing complexity.

**Projects' Summary:**

**Project 5**

A two-tier architecture consisting of a VPC with two Private and two Public subnets, each pair in a different AZ. The Public subnets host an EC2 instance through an Auto-Scaling Group while the Private subnets host an RDS instance. Relevant Route-Table, Internet Gateway and Security Groups are associated with relevant resources.


**Project 4**

A VPC with one Public and one Private subnet, each in different AZs are created. Two relevant route tables are created, each associated with a subnet. An Internet Gateway is created for the route table of the Public subnet.


**Project 3**

An Auto-Scaling Group is created along with a launch template of an EC2 instance and its Security Group.


**Project 2**

An RDS instance and an EC2 instance are created with their security groups such that traffic inbound to the RDS instance can only be from the EC2 instance.


**Project 1**

An EC2 instance is created with its Security Group.
