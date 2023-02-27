resource "aws_instance" "instance" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}
variable "instance_type" {}
