terraform {
  required_providers {
    aws = {
      source  = "opentofu/aws"
      version = "~> 5.1.0"
    }
  }
}

provider "aws" {
  region      = "eu-west-3"
  access_key  =  var.access_key
  secret_key  =  var.secret_key
}
