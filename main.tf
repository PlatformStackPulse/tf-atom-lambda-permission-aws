resource "aws_lambda_permission" "this" {
  count = module.this.enabled ? 1 : 0

  statement_id  = module.this.id
  action        = var.action
  function_name = var.function_name
  principal     = var.principal
  source_arn    = var.source_arn
}
