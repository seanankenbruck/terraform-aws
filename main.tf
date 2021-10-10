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

# This module creates specified IAM roles / profiles / policies
module "iam" {
  source = "./modules/iam"
}


# This module call creates n number of EC2 instance
module "ec2_instances" {
  source     = "./modules/ec2"
  count      = length(var.bastion_config)
  ec2_config = element(var.bastion_config, count.index)
}
