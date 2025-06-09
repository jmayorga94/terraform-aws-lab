variable "bucket_name_prefix" {
  type        = string
  description = "S3 bucket name (3–63 chars, lowercase letters, numbers, dots, hyphens; must start/end alphanumeric)"
  validation {
    condition = (
      length(var.bucket_name) >= 3 &&
      length(var.bucket_name) <= 63 &&
      can(regex("^[a-z0-9][a-z0-9.-]+[a-z0-9]$", var.bucket_name))
    )
    error_message = "Bucket name must be 3–63 chars, lowercase letters/numbers/dots/hyphens, and start/end with a letter or number."
  }
}

resource "random_uuid" "id" {}

locals {
  bucket_name = "${var.bucket_name_prefix}-${replace(random_uuid.id.result, "-", "")}"
}
variable "environment" {
  type        = string
  description = "Deployment environment tag (e.g. dev, staging, prod)"
  default     = "dev"
}

resource "aws_s3_bucket" "this" {
  bucket = local.bucket_name
  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}

output "bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.this.arn
}
