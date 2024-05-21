**Author:** Aditya Goel 

This repository can be used to implement **Infrastructure-as-Code (IaC)** on AWS using Terraform.

**Folder Structure:**
1. **./modules:** Generalized template to set up various AWS services.
2. **./Project1 to ./ProjectN**: Different IaC Projects with increasing complexity.

**Projects' Summary:**

**Project 5**

A two-tier architecture consisting of a VPC with two Private and two Public subnets, each pair in a different AZ. The Public subnets host an EC2 instance through an Auto-Scaling Group while the Private subnets host an RDS instance. Relevant Route-Table, Internet Gateway and Security Groups are associated with relevant resources.
![Ani5](https://github.com/adityagoel-mata/Terraform-AWS-Configs/assets/50823187/94beb9a9-f8d7-4cc5-9f8f-dc5099d78228)


**Project 4**

A VPC with one Public and one Private subnet, each in different AZs are created. Two relevant route tables are created, each associated with a subnet. An Internet Gateway is created for the route table of the Public subnet.
![Ani_P4](https://github.com/adityagoel-mata/Terraform-AWS-Configs/assets/50823187/f8c73079-35c7-434a-beac-2115c636773e)


**Project 3**

An Auto-Scaling Group is created along with a launch template of an EC2 instance and its Security Group.
![Ani_P3](https://github.com/adityagoel-mata/Terraform-AWS-Configs/assets/50823187/67ae6e7c-b128-487d-8161-0784be829eb2)



**Project 2**

An RDS instance and an EC2 instance are created with their security groups such that traffic inbound to the RDS instance can only be from the EC2 instance.

![Ani_P2](https://github.com/adityagoel-mata/Terraform-AWS-Configs/assets/50823187/e8248c23-356d-4275-b661-a346d4486f8e)



**Project 1**

An EC2 instance is created with its Security Group.
![Animation1](https://github.com/adityagoel-mata/Terraform-AWS-Configs/assets/50823187/f2e35cc0-04a1-4b83-add4-1ff1bbc809d7)


#Adding dummy code for sonarqube testing
I am adding a dummy \n
uncommented code for SQ \n
Will it be counted as 3 lines? \n
Or four? \n
Or will it be counted as 0 because it is in README.md? \n
(Or six?) \n
