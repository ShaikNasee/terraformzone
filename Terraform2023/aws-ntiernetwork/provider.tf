# terraform specific version 
terraform {
  required_providers {
    aws       = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
# provider where the infrestructure has to be created 
provider "aws" {
    region = var.region
  
}