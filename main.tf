module "ec2_instance" {
  count = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0924fa21f01c23f6e"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-0601fb5aae1d0194b"]
  subnet_id              = "subnet-03dcaa293d3dfc5a4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    hc-owner-dl = "test@test.com"
    hc-config-as-code = "terraform"
  }
}
