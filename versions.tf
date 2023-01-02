terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0" # Optional but recommended in production
    }
  }
  backend "s3" {
    bucket         = "ecs-devops-demo"
    key            = "ecs-devops-demo.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "ecs-devops-demo-tf-state-lock"
  }
}
