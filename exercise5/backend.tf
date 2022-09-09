terraform {
  backend "s3" {
    bucket = "terra-bucket-2"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
