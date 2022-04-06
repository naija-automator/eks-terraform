provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      managedby = "terraform"
      owner     = "PhunkyTech Team"
    }
  }
}

terraform {

  required_providers {
    aws = {
      version = "~> 3.0"
    }
  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "phunkytech-mtc-terransible"

    workspaces {
      name = "eks-terraform"
    }
  }
}
