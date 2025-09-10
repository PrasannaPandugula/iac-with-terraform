terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-north-1" // zone= eu-north-1d
}

resource "aws_instance" "app_server" {
  ami           = "ami-000b353ad9d9ebc92" // public and verified 
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

