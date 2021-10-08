terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.region
}

# resource "aws_instance" "app_server" {
#   ami           = var.ec2_ami
#   instance_type = var.instance_type
#
#   tags = {
#     Name = "ExampleAppServerInstance"
#   }
# }

# This module call creates an EC2 instance
module "ec2_instance" {
  source             = "./modules/ec2"
  name               = var.name
  ami_id             = var.ec2_ami
  instance_type      = var.instance_type
}
