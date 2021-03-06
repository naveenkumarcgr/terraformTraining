

resource "aws_instance" "mynavec2" {
  ami = var.default
  count = 2
  instance_type = "t2.micro"
  tags = {
    "Name" = "myNavec2Name"
  }

}

#resource "aws_s3_bucket" "navtfstate" {
 # bucket = "epsilontraining3"
#}

output "mynavec2ipaddress" {
  value = aws_instance.mynavec2[*].public_ip
}

