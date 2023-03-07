module "sg" {
  source = "./sg"
}
module "ec2" {
  for_each = var.instances
  source = "./ec2"
  sg_id = module.sg.sg_id
  component = each.value["name"]
  instance_type = each.value["type"]
}

output "ec2_output" {
  value = module.ec2["catalogue"].private_ip
}



