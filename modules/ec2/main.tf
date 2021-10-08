module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name                   = var.name
  ami                    = var.ami_id
  instance_type          = var.instance_type

}
