resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "this" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
}
