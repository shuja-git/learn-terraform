module "security_group" {
  source = "./sg"
}
module "ec2_instance" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
  sg_id =  module.security_group.sg_id

}
#module "route53_module" {
#  source = "./route53"
#  private_ip = module.ec2_instance.private_ip
#}

output "ec2" {
  value = module.ec2_instance
}