terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami = var.fileid 
  instance_type = var.instancetype
  
}