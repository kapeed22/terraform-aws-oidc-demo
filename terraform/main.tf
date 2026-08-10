terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "simple_ec2" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t2.micro"
  subnet_id     = "subnet-009f6ad49f333e577"

  tags = {
    Name = "Simple-OIDC-ECC"
  }
}
