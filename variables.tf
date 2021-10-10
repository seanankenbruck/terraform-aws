## provider

variable "aws_profile" {
  description = "Name of profile in the credentials file"
  default     = "ankenbruckdevops"
}

variable "region" {
  description = "AWS region to provision resources"
  default     = "us-east-1"
}

## basic ec2 config
variable bastion_config {
  description = "Map containing all the paramenters for the creation of the EC2 Bastion Host (jumpbox)"
  default = [
    {
      create = true
      az_replication = false
      name = "devops-test2"
      ami = "ami-02e136e904f3da870"
      iam_instance_profile = ""
      instance_count = 1
      associate_public_ip_address = true
      instance_type = "t2.micro"
      iam_instance_profile = "ec2-server-profile"
      root_block_device = [
        {
          volume_type = "gp2"
          volume_size = 10
          encrypted   = true
        }
      ]
      ebs_block_device = []
      user_data = ""
      key_name = ""
      tags = {
        Terraform = "true"
      }
      volume_tags = {
        Terraform = "true"
      }
    }
  ]
}
