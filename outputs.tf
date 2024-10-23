output "vpc" {
  value = merge(module.vpc, { cidr : var.vpc_settings.cidr })
}
