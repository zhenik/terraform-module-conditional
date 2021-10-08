variable "sub_module" {
  type = string
}

module "a" {
  source = "./module-a"
  count = var.sub_module == "a" ? 1 : 0
}

module "b" {
  source = "./module-b"
  count = var.sub_module == "b" ? 1 : 0
}

output "out" {
  value = var.sub_module == "a" ? module.a[0].out : (var.sub_module == "b" ? module.b[0].out : "error b" )
  description = "Conditional out"
}
