output "cur_bucket" {
  value = aws_s3_bucket.cur_bucket.bucket
}

output "athena_database" {
  value = aws_athena_database.cost_db.name
}