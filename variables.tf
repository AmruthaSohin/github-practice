variable "region" {
  default = "us-east-1"
}

variable "cur_bucket_name" {
  description = "S3 bucket to store cost and usage reports"
  type        = string
}

variable "athena_database_name" {
  default = "aws_cost_reporting"
}

variable "report_name" {
  default = "project-cost-report"
}