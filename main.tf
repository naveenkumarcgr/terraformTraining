provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "mynavec2" {
  ami = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  tags = {
    "Name" = "myNavec2Name"
  }
}

output "mynavec2ipaddress" {
  value = aws_instance.mynavec2.public_ip
}

