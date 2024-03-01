#k8s_master_ec2 variables
k8s_master_ami           = "ami-05fb0b8c1424f266b"
k8s_master_instance_type = "t2.medium"
k8s_master_user_data     = "${file("k8s-master-installation.sh")}"
k8s_master_instance_name = "tf-ec2-instance"


#k8s_master_SG variables
k8s_master_ec2_sg_name           = "tf-ec2-sg"
k8s_master_ec2_sg_description    = "This allows HTTP requests"
k8s_master_ec2_sg_tag_name       = "tf-ec2-sg"
k8s_master_ec2_from_port         = 80
k8s_master_ec2_to_port           = 80
k8s_master_ec2_protocol          = "tcp"
k8s_master_ec2_cidr_blocks       = ["0.0.0.0/0"]


#k8s_worker_ec2 variables
k8s_worker_ami           = "ami-05fb0b8c1424f266b"
k8s_worker_instance_type = "t2.micro"
k8s_worker_user_data     = "${file("k8s-worker-installation.sh")}"
k8s_worker_instance_name = "tf-ec2-instance"


#k8s_worker_SG variables
k8s_worker_ec2_sg_name           = "tf-ec2-sg"
k8s_worker_ec2_sg_description    = "This allows HTTP requests"
k8s_worker_ec2_sg_tag_name       = "tf-ec2-sg"
k8s_worker_ec2_from_port         = 6443
k8s_worker_ec2_to_port           = 6443
k8s_worker_ec2_protocol          = "tcp"
k8s_worker_ec2_cidr_blocks       = ["0.0.0.0/0"]