resource "aws_instance" "ec2-sample" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
}
