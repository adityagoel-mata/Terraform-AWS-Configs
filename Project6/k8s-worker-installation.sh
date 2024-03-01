#!/bin/bash


#Installing Docker
sudo apt update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu
sudo systemctl enable --now docker


#Adding GPG Keys
curl -fsSL "https://packages.cloud.google.com/apt/doc/apt-key.gpg" | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kubernetes-archive-keyring.gpg


#Add the repository to the sourcelist
echo 'deb https://packages.cloud.google.com/apt kubernetes-xenial main' | sudo tee /etc/apt/sources.list.d/kubernetes.list


#Update and install kubeadm, kubectl and kubelet
sudo apt update
sudo apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y


#Reset any Kubeadm installations
sudo kubeadm reset pre-flight checks


echo 'Now execute the join command from the master node with sudo and append --v=5 at the end.'