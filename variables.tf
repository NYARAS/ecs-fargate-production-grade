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

variable "django_secret_key" {
  description = "Secret key for Django app"
}
