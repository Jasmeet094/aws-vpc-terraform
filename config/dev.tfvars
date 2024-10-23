identifier = "vpc_test"
tags = {
  OwnerName    = "test"
  Billing      = "devops"
  Project      = "vpc"
  Terraform    = "true"
  map-migrated = "mig43504"
}

vpc_settings = {
  application_subnets = ["172.24.16.0/22", "172.24.20.0/22"]
  public_subnets      = ["172.24.0.0/22", "172.24.4.0/22"]
  data_subnets        = ["172.24.8.0/22", "172.24.12.0/22"]
  dns_hostnames       = true
  dns_support         = true
  tenancy             = "default"
  cidr                = "172.24.0.0/16"
}
