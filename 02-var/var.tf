#variable "sample" {
#  default = "Hello from Default "
#}
#variable "list" {
#  default = [
#    "shuja",
#    100,
#    true]
#}
#
#
#variable "map" {
#  default = {
#    name = "shujath",
#    course = "Cloud",
#    boolean = true
#  }
#}
#output "list" {
#  value = "first value from list ${var.list[0]}"
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
#output "count" {
#  value = var.d1[count.index]
#}
variable "sample1" {}
output "sample1" {
  value = var.sample1
}