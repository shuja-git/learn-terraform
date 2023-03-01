module "security_group" {
  source = "./sg"
}
module "ec2_instance" {
  source = "./ec2"
}

output "sg_id" {
  value = module.security_group
}
output "ec2_output" {
  value = module.ec2_instance
}