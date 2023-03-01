data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "frontend"
  }
 provisioner "remote-exec" {
   connection {
     host = self.public_ip
     user = "root"
     password = "DevOps321"
   }
   inline = [
    "echo Hello"
   ]

 }

}



