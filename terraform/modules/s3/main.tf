resource "aws_s3_bucket" "eatbook_s3_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = var.s3_bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_public_access_block" "eatbook_s3_public_access_block" {
  bucket = aws_s3_bucket.eatbook_s3_bucket.id

  block_public_acls       = false  # 공용 ACL 차단 해제
  ignore_public_acls      = false  # 공용 ACL 무시하지 않음
  block_public_policy      = false  # 공용 정책 차단 해제
  restrict_public_buckets  = false  # 공용 버킷 제한 해제
}

resource "aws_s3_bucket_policy" "eatbook_s3_bucket_policy" {
  bucket = aws_s3_bucket.eatbook_s3_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.eatbook_s3_bucket.arn}/*"
      }
    ]
  })
}

resource "aws_s3_bucket_cors_configuration" "eatbook_s3_cors" {
  bucket = aws_s3_bucket.eatbook_s3_bucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "POST", "PUT"]
    allowed_origins = ["*"]  # 모든 도메인 허용 (필요에 따라 수정)
    max_age_seconds = 3000
  }
}