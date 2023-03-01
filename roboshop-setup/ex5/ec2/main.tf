data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "machine" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "HelloWorld"
  }
}

output "private_ip" {
  value = aws_instance.machine.private_ip
}

variable "sg_id" {}