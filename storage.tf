resource "aws_s3_bucket" "static_assets" {
  bucket = var.bucket_name

  tags = {
    Name    = var.bucket_name
    Project = var.project_name
  }
}

resource "aws_s3_bucket_versioning" "static_assets_versioning" {
  bucket = aws_s3_bucket.static_assets.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "static_assets_block_public" {
  bucket = aws_s3_bucket.static_assets.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}