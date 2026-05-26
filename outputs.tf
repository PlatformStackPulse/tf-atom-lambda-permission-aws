output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "statement_id" {
  description = "Statement ID of the permission"
  value       = try(aws_lambda_permission.this[0].statement_id, null)
}
