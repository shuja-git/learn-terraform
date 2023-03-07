#module "test" {
#  source = "./childModule"
#}

module "module" {
  source = "./test"
}