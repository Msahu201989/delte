
resource "aws_instance" "baston" {
 ami = "ami-0bb6af715826253bf"
 instance_type = "t2.micro"
 associate_public_ip_address = true
 tags = {
   Name = "baston"
   }
    }


  output  "Private_IP" {
   value = "${aws_instance.baston.public_ip}"
    }
