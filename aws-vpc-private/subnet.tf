resource "aws_subnet" "first_private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.3.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "temp-subnet-private-1"
  }
}

resource "aws_subnet" "second_private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.4.0/24"

  availability_zone = "ap-northeast-2b"

  tags = {
    Name = "temp-subnet-private-2"
  }
}
