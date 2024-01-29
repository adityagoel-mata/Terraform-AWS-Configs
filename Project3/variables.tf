#Launch Template's variable declaration

variable "ec2_lt_name" {}
variable "ec2_lt_image_id" {}
variable "ec2_lt_instance_type" {}

# AutoSclaing Group's variable declaration

variable "asg_ec2_availability_zones" {}
variable "asg_ec2_desired_capacity" {}
variable "asg_ec2_max_size" {}
variable "asg_ec2_min_size" {}
