variable "d1" {
  default = 5
}
resource "null_resource" "nothing" {
  count = var.d1
}
variable "d2" {
  default = ["banana", "apple"]
}
resource "null_resource" "d2" {
  count = length(var.d2)
}
variable "d3" {
  default = {
    banana = {
      name = "banana"
      count = 30
    }
    apple = {
      name = "apple"
      count = 3
    }
  }
}
resource "null_resource" "d3" {
 # count = length(var.d3)
  for_each = var.d3
}
output "FRUITS" {
  value = [for s in var.d2: upper(s)]

}
