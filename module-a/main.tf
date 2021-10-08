resource "random_string" "random_default" {
  length = 5
}
output "out" {
  value = "a-${random_string.random_default.result}"
}