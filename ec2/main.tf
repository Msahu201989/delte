resource "aws_instance" "baston" {
  ami = "ami-0bb6af715826253bf"
  count = 2
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.SG_ID]
  tags = {
    Name = "baston"
  }
}

variable "SG_ID" {}

output  "Private_IP" {
  value = "${aws_instance.baston.public_ip}"
}
