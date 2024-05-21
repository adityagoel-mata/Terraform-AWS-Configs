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


#Initiliase a cluster
sudo kubeadm init
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
sudo kubeadm token create --print-join-command     #prints the join command


echo 'Now expose port 6443 in the security group of your Master Node for the worker node to connect to Master'
