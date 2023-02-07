module "ec2_instance" {
  count = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0913c47048d853921"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-03de4eeba95bdda4f"]
  subnet_id              = "subnet-0d607a3bfa7b03154"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    hc-owner-dl = "test@test.com"
    hc-config-as-code = "terraform"
  }
}
