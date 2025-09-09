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
  region  = "u-north-1b"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

