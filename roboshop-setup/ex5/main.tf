module "security_group" {
  source = "./sg"
}
#module "ec2_instance" {
#  source = "./ec2"
#
#}

#output "sg" {
#  value = module.security_group.sg_id
#}