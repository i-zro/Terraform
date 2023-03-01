resource "aws_subnet" "first_subnet" {
  vpc_id     = aws_vpc.main.id

}

resource "aws_subnet" "second_subnet" {
  vpc_id     = aws_vpc.main.id

}
