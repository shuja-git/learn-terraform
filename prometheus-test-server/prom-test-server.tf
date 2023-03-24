resource "aws_spot_instance_request" "Node1" {
  ami           = "ami-0b9af232e8488cd98"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  wait_for_fulfillment = true

  tags = {
    Name = "prometheus-test-server"
  }
}
resource "aws_ec2_tag" "Node1" {
  resource_id = aws_spot_instance_request.Node1.spot_instance_id
  key         = "Name"
  value       = "prometheus-test-server"
}

resource "aws_spot_instance_request" "Node2" {
  ami           = "ami-0b9af232e8488cd98"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  wait_for_fulfillment = true

  tags = {
    Name = "prometheus-test-Node"
  }
}

resource "aws_ec2_tag" "Node2" {
  resource_id = aws_spot_instance_request.Node1.spot_instance_id
  key         = "Name"
  value       = "prometheus-test-Node"
}
