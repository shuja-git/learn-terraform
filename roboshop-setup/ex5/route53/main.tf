resource "aws_route53_record" "record" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}
variable "private_ip" {}