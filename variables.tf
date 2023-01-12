variable "region" {
  description = "Region to create the AWS resources"
  default     = "eu-west-1"
}

variable "prefix" {
  default = "demo-ecs"
}

variable "project" {
  description = "Name of the project to be deployed on this infrastructure"
  default     = "demo-ecs-devops"
}

variable "contact" {
  description = "Email of the contact person responsible for this infrastructure"
  default     = "email@calvineotieno.com"
}

variable "db_username" {
  description = "Username for the RDS postgres instance"
}

variable "db_password" {
  description = "Password for the RDS postgres instance"
}

variable "bastion_key_name" {
  default = "golang-mux-api-devops-bastion"
}

variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "167259143853.dkr.ecr.eu-west-1.amazonaws.com/golang-mux-api:e6c1d2b"
}

variable "ecr_image_proxy" {
  description = "ECR image for Proxy"
  default     = "167259143853.dkr.ecr.eu-west-1.amazonaws.com/golang-api-proxy:0f9f76f"
}


variable "dns_zone_name" {
  description = "Domain Name"
  default     = "calvineotieno.com"
}

variable "subdomain" {
  description = "Subdomain per environment"
  type        = map(string)
  default = {
    production = "api"
    staging    = "api.staging"
    dev        = "api.dev"
  }
}

variable "endpoint" {
  description = "Endpoint url"
  type        = string
  default     = "staging.calvineotieno.com"
}

variable "domain_name" {
  description = "Domain name"
  type        = string
  default     = "calvineotieno.com"
}
