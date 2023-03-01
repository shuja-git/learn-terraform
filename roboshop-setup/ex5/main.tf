module "security_group" {
  source = "./sg"
}
output "sg_id" {
  value = module.security_group
}