output "security_group_id_fe" {
  description = "프론트 보안 그룹의 ID"
  value       = aws_security_group.eatbook-sg-FE.id
}

output "security_group_id_be" {
  description = "백 보안 그룹의 ID"
  value       = aws_security_group.eatbook-sg-BE.id
}

output "security_group_id" {
  description = "보안 그룹 ID"
  value       = aws_security_group.db_sg.id
}
