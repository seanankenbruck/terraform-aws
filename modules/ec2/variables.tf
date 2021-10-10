# variable "prefix" {
#   description = "Prefix to apply to the EC2 names and other resources created"
#   type        = string
# }

variable "ec2_config" {
  description = "Map containing all the paramenters for the creation of the EC2 instances"
  type = object({
    create                      = bool
    # az_replication              = bool
    # azs                         = list(string)
    ami                         = string
    associate_public_ip_address = bool
    instance_type               = string
    name                        = string
    # vpc_security_group_ids      = list(string)
    # subnet_ids                  = list(string)
    root_block_device           = list(any)
    ebs_block_device            = list(map(string))
    iam_instance_profile        = string
    key_name                    = string
    tags                        = map(string)
    user_data                   = string
    volume_tags                 = map(string)
  })
}
