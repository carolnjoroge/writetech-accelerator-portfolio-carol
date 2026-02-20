terraform {
  required_version = ">= 1.5.0"  
}

provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "demo_bucket" {
    bucket = "wth-advanced-demo-bucket"
}

resource "aws_iam_user" "demo_user" {
    name = "wth-advanced-demo-user"
}
