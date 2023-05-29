
provider "aws" {
  region  = var.region
  profile = local.aws_profile
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Project = local.project
  }
}

resource "aws_s3_bucket_versioning" "versioning_s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "folder-app-backend" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
  key    = "app/backend/"
}

resource "aws_s3_object" "folder-app-frontend" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
  key    = "app/frontend/"
}

resource "aws_s3_object" "folder-app-general" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
  key    = "general/"
}