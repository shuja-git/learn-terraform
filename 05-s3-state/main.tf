data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

terraform {
  backend "s3" {
    bucket = "roboshop-bucket"
    key    = "05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "Demo"
  }
}