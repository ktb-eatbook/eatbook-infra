variable "ami" {
  description = "인스턴스의 AMI ID"
  type        = string
}

variable "instance_type" {
  description = "인스턴스 유형"
  type        = string
}

variable "key_name" {
  description = "SSH 키 이름"
  type        = string
}

variable "public_subnet_id" {
  description = "퍼블릭 서브넷의 ID"
  type        = string
}

variable "private_subnet_id" {
  description = "프라이빗 서브넷들의 ID"
  type        = string
}

variable "security_group_id_fe" {
  description = "프론트 보안 그룹의 ID"
  type        = string
}

variable "security_group_id_be" {
  description = "백 보안 그룹의 ID"
  type        = string
}

variable "instance_public_count" {
  description = "퍼블릭 인스턴스의 수"
  type        = number
}

variable "instance_private_count" {
  description = "프라이빗 인스턴스의 수"
  type        = number
}

variable "public_name" {
  description = "퍼블릭 인스턴스 이름"
  type        = string
}

variable "private_name" {
  description = "프라이빗 인스턴스 이름"
  type        = string
}
