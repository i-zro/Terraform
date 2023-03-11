module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["k8s-master", "k8s-node1", "k8s-node2"])

  name = "instance-${each.key}"
  
	ami                    = "ami-09eba584c30b7299f"
  instance_type          = "t2.medium"
  key_name               = "naa0-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-02190e8641b1284e3"]  
  subnet_id              = "subnet-08ce50e8a5d88d92b"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
