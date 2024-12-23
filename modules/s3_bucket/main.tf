resource "random_id" "bucket_suffix" {
  byte_length = 8
}

resource "aws_s3_bucket" "static_bucket" {
  bucket = format("%s-static-files-bucket--%s", var.environment, random_id.bucket_suffix.hex)

  tags = {
    Name        = format("%s-StaticFilesBucket", var.environment)
    Environment = var.environment
  }
}
resource "aws_s3_bucket_public_access_block" "static_bucket_public_access" {
  bucket = aws_s3_bucket.static_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.static_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.static_bucket.id
  policy = data.aws_iam_policy_document.bucket_policy.json
}

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid    = "PublicReadGetObject"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.static_bucket.arn}/*"
    ]
  }
}

