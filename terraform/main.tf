provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "website_bucket" {
    bucket = "github-actions-terraform-website-anil2021"
    tags = {
    Name = "GitHub Actions Demo"
  }
}

resource "aws_s3_bucket_website_configuration" "website_config" {
    bucket = aws_s3_bucket.website_bucket.id

    index_document {
      suffix = "index.html"
    }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
    bucket = aws_s3_bucket.website_bucket.id
    block_public_acls = false
    block_public_policy = false
  
}
