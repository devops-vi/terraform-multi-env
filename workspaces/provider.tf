terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
  backend "s3" {
    bucket = "laven-terrafom-state"
    key = "workspaces-terrafom-state"
    region = "us-east-1"
    dynamodb_table = "laven-terrafom-state"
  }
}

provider "aws" {
  region = "us-east-1"
}