provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "one" {
  count         = 2
  ami           = "ami-0854d4f8e4bd6b834"
  instance_type = "t3.micro"

  tags = {
    Name = "test-server"
  }
}
