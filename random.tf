resource "random_id" "server" {
  byte_length = 1
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
