terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



provider "aws" {
  region = "us-east-2"
  #access_key = ""     #To be filled
  #secret_key = ""     #To be filled
}