terraform {
  backend "s3" {
    bucket               = "s3-terraform-backend"
    region               = "us-east-1"
    key                  = "backend.tfstate"
    workspace_key_prefix = "vpc-infra-benauto"
    dynamodb_table       = "s3-terraform-backend"
  }
}
