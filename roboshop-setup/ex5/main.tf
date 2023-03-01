module "security_group" {
  source = "./sg"
}
module "ec2_instance" {
  source = "./ec2"
  sg_id =  module.security_group.sg_id

}

#output "sg" {
#  value = module.security_group.sg_id
#}