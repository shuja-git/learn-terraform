#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["973714476881"]
#}
#
#resource "aws_instance" "instances" {
#  ami           = data.aws_ami.ami.image_id
#  instance_type =
#
#  tags = {
#    Name = "HelloWorld"
#  }
#}
#
#variable "component" {}
#
