resource "aws_security_group" "allow_tls" {
  name        = "naa0-k8s-sg"
  description = "k8s용 보안그룹"
  vpc_id      = aws_vpc.main.id

  ingress {
		from_port       = 0
		to_port         = 0
		protocol        = "tcp"
		cidr_blocks     = ["0.0.0.0/0"]
	}

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
