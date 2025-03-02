terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-recipe-api-s3-tf-state"
    key            = "tf-state-setup"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "devops-recipe-api-tf-lock"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      project     = var.project
      contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }

  }
}
