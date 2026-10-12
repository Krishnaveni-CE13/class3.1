terraform {
  backend "s3" {
    bucket       = "s3://sctp-tfstate-ce13/krishna/class3.1/"
    key          = "krishna/class3.1/workflow.tfstate"
    region       = "us-east-1"
  }
}

provider "aws" {
   region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "class3.1"
  tags = {
    Purpose = "github-actions-workshop"
  }
}