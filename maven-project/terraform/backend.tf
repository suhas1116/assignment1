terraform {
  backend "s3" {
    bucket = "mydata-terraforms"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}
