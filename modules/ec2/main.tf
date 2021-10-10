# Ask AWS for details of the subnets
# data "aws_subnet" "subnets" {
#   for_each = toset(var.ec2_config.subnet_ids)
#   id       = each.value
# }

module "ec2" {
  #See https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest for more details
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~>3.0"

  # Use the count operator to select whether or not to create any instances and
  # if we need AZ replication
  count = var.ec2_config.create ? 1 : 0

  ami = var.ec2_config.ami
  # With this parameter we create the number of instances in one AZ
  associate_public_ip_address = var.ec2_config.associate_public_ip_address
  instance_type               = var.ec2_config.instance_type
  # The name includes $environment_name-$server_name-$availability_zone
  name = var.ec2_config.name
  # vpc_security_group_ids = var.ec2_config.vpc_security_group_ids
  # subnet_id              = element(var.ec2_config.subnet_ids, count.index)
  root_block_device      = var.ec2_config.root_block_device
  ebs_block_device       = var.ec2_config.ebs_block_device
  iam_instance_profile   = var.ec2_config.iam_instance_profile
  key_name               = var.ec2_config.key_name
  tags                   = var.ec2_config.tags
  volume_tags            = var.ec2_config.volume_tags
}
