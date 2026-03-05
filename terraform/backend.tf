terraform {
  backend "s3" {
    bucket         = "github-actions-terraform-website-anil2025"
    key            = "s3-static-website/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}