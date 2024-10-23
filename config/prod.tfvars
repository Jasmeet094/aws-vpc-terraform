identifier = "vpc_test"
tags = {
  OwnerName    = "test"
  Billing      = "devops"
  Project      = "vpc"
  Terraform    = "true"
  map-migrated = "mig43504"
}

vpc_settings = {
  application_subnets = ["172.26.16.0/22", "172.26.20.0/22"]
  public_subnets      = ["172.26.0.0/22", "172.26.4.0/22"]
  data_subnets        = ["172.26.8.0/22", "172.26.12.0/22"]
  dns_hostnames       = true
  dns_support         = true
  tenancy             = "default"
  cidr                = "172.26.0.0/16"
}
