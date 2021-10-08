## provider

variable "aws_profile" {
  description = "Name of profile in the credentials file"
  default     = ""
}

variable "region" {
  description = "AWS region to provision resources"
  default     = ""
}

variable "ec2_ami" {
  description = "AMI to use for example"
  default     = ""
}

variable "instance_type" {
  description = "Type of EC2 instance to use for example"
  default     = ""
}

variable "name" {
  description = "Name to give instances"
  default     = ""
}
