variable "sample1" {}
#  default = "Hello from Default "
#}
#variable "list" {
#  default = [
#    "shuja",
#    100,
#    true]
#}
##
##
#variable "map" {}
#
#output "list" {
#  value = "first value from list ${var.list[0]}, boolean value from map is ${var.map["boolean"]}"
#}
#output "vars" {
#  value = "last value from map is ${var.map["boolean"]}"
#}
#----------------
#Count example
#----------------
variable "d1" {
  default = [
    {
      course_name = "aws"
      trainer_name = "Raghu"
    },
    {
      course_name = "DevOps"
      trainer_name = "Imran"
    },
  ]
}
output "count" {
  value = var.d1.*.course_name
}
#variable "sample1" {}
#output "sample1" {
#  value = var.sample1
#}
#variable "cli" {}
#output "cli" {
#  value = var.cli
#}