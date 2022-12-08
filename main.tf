module "ec2_instance" {
  count = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = var.ami
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = [var.sg]
  subnet_id              = var.subnet

  tags = {
    Terraform   = "true"
    Environment = "dev"
    hc-owner-dl = var.hc_owner
    hc-config-as-code = "terraform"
  }
}