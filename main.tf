terraform {
  backend "s3" {
    bucket = "tfstatevtainfo"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}