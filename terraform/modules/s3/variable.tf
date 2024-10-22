variable "s3_bucket_name" {
  description = "S3 버킷 이름"
  type        = string
}

variable "environment" {
  description = "환경 태그 (예: 개발, 프로덕션 등)"
  type        = string
}