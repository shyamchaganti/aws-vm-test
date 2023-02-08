module "ec2_instance" {
  count = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0924fa21f01c23f6e"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-003ddde551be18145"]
  subnet_id              = "subnet-09d2e812f0edb7029"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    hc-owner-dl = "test@test.com"
    hc-config-as-code = "terraform"
  }
}
