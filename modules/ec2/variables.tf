
variable "ami_id" {
  default = "ami-02e136e904f3da870"
}

variable "associate_public_ip_address" {
  default = false
}

variable "az_replication" {
  default = true
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "create" {
  default = true
}

variable "ebs_block_device" {
  type = list(map(string))
  default = [
      {
        volume_type = "gp2"
        volume_size = 10
        encrypted   = false
      }
    ]

}

variable "iam_instance_profile" {
  default = ""
}

variable "instance_count" {
  default = 1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = ""
}

variable "name" {
  default = ""
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "root_block_device" {
  type = list(map(string))
  default = [
      {
        volume_type = "gp2"
        volume_size = 10
        encrypted   = false
      }
    ]
}

variable "tags" {
  type = map(string)
  default = {
      Terraform = "true",
      environment = "dev"
    }
}

variable "volume_tags" {
  type = map(string)
  default = {
      Terraform = "true",
      environment = "dev"
    }
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}
