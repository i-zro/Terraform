resource "aws_subnet" "first_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.1.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "subnet-tf-k8s-1"
  }
}

resource "aws_subnet" "second_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.2.0/24"

  availability_zone = "ap-northeast-2b"

  tags = {
    Name = "subnet-tf-k8s-2"
  }
}
