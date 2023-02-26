variable "d1" {
  default = 5
}
resource "null_resource" "nothing" {
  count = var.d1
}
variable "d2" {
  default = [banana, apple]
}
resource "null_resource" "d2" {
  count = length(var.d2)
}
