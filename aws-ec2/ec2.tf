module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-09eba584c30b7299f"
  instance_type          = "t2.micro"
  key_name               = "naa0-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-02190e8641b1284e3"] 
  subnet_id              = "subnet-08ce50e8a5d88d92b"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
