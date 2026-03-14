resource "aws_cur_report_definition" "cost_report" {

  report_name                = var.report_name
  time_unit                  = "MONTHLY"
  format                     = "Parquet"
  compression                = "Parquet"
  additional_schema_elements = ["RESOURCES"]

  s3_bucket = aws_s3_bucket.cur_bucket.bucket
  s3_region = var.region
  s3_prefix = "cur"

  report_versioning = "OVERWRITE_REPORT"

  additional_artifacts = [
    "ATHENA"
  ]

  refresh_closed_reports = true
}