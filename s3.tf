resource "aws_s3_bucket" "cur_bucket" {
  bucket = var.cur_bucket_name

  tags = {
    Name        = "cost-report-bucket"
    Environment = "prod"
  }
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.cur_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}