# Create a VPC
module "vpc" {
  source       = "./module"
  multi_nat_gw = false
  vpc_settings = {
    application_subnets = var.vpc_settings.application_subnets
    public_subnets      = var.vpc_settings.public_subnets
    data_subnets        = var.vpc_settings.data_subnets
    dns_hostnames       = try(var.vpc_settings.dns_hostnames, true)
    dns_support         = try(var.vpc_settings.dns_support, true)
    tenancy             = try(var.vpc_settings.tenancy, "default")
    cidr                = var.vpc_settings.cidr
  }
  identifier = "${var.identifier}-vpc"
  region     = "us-east-1"
  tags       = var.tags

  create_private_endpoints = false
}
