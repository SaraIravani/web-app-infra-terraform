variable "environment" {
  description = "The environment to deploy to (dev, staging, production)"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

