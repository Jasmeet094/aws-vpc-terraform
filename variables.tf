variable "identifier" {
  description = "Name of the resources"
  default     = "test"
  type        = string
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
}

variable "vpc_settings" {
  description = "Map of AWS VPC settings"
  type = object({
    application_subnets = list(string)
    public_subnets      = list(string)
    data_subnets        = list(string)
    dns_hostnames       = bool,
    dns_support         = bool,
    tenancy             = string,
    cidr                = string
  })
}
