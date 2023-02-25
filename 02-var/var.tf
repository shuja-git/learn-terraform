variable "sample" {
  default = "Hello from Default "
}
variable "list" {
  default = [
    "shuja",
    100,
    true]
}


variable "map" {
  default = {
    name = "shujath",
    course = "Cloud",
    boolean = true
  }
}
output "list" {
  value = "first value from list ${var.list[0]}, 3rd value from map is ${var.map[boolean]} "
}