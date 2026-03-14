resource "aws_athena_database" "cost_db" {
  name   = var.athena_database_name
  bucket = aws_s3_bucket.cur_bucket.bucket
}