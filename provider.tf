provider "aws" {
  region = var.region
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"

  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
  }
}

provider "aws" {
  alias  = "us-east-1" # reason for alias 'us-east-1' is due to issue with provider configurations when you change or rename them
  region = "eu-west-1"
}

data "aws_region" "current" {

}