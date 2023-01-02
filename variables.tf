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
