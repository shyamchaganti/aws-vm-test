module "ec2_instance" {
  count = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-0903b7cf1c33d2c49"]
  subnet_id              = "subnet-0ff6679a826800a61"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    hc-owner-dl = "test@test.com"
    hc-config-as-code = "terraform"
  }
}
