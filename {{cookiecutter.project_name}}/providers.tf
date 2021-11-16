

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}

provider "aws" {
  region = "{{cookiecutter.aws_region}}"
}
