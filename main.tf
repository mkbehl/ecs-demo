provider "aws" {
  region  = "us-west-2"
  version = "~> 2.63"
}


terraform {
  backend "s3" {
    bucket = "dishecsstatebucket"
    key    = "state/terraform.tfstate"
    region = "us-west-2"
  }
}