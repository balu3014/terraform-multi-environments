terraform {
  backend "s3" {
    bucket = "my-dev-s3-bucket-1"
    key    = "dev-bucket"
    region = "us-east-1"
    dynamodb_table = "MY-DEV-DYNAMODB-TABLE"
  }
}