terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "github_actions_demo" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "GitHub-Actions-Demo"
  }
}
