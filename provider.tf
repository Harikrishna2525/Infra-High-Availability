terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Restricts updates to minor versions only (e.g., 5.x)
    }
  }
}

provider "aws" {
  region = var.aws_region

}
