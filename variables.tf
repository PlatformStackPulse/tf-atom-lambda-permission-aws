variable "action" {
  description = "The AWS Lambda action to allow"
  type        = string
  default     = "lambda:InvokeFunction"
}

variable "function_name" {
  description = "Name or ARN of the Lambda function"
  type        = string
  validation {
    condition     = length(var.function_name) > 0
    error_message = "function_name must not be empty."
  }
}

variable "principal" {
  description = "Principal to grant permission to"
  type        = string
  validation {
    condition     = length(var.principal) > 0
    error_message = "principal must not be empty."
  }
}

variable "source_arn" {
  description = "ARN of the source triggering the Lambda"
  type        = string
  default     = null
}
