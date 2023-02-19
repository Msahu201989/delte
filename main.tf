resource "aws_instance" "Baston" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"

  tags = {
    Name = "baston"
  }


}








#module "ec2" {
#  source = "./ec2"
#  SG_ID = module.sg.SG_ID
#}
#
#module "sg" {
#  source = "./sg"
#}
