terraform {
  backend "s3" {
    bucket = "my-prod-s3-bucket-1"
    key    = "dev-bucket"
    region = "us-east-1"
    dynamodb_table = "MY-PROD-DYNAMODB-TABLE"
  }
}