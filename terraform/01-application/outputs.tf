output "ecr-role" {
  value       = aws_iam_role.ecr_role.arn
  description = "ARN of the IAM role for ECR access"
}

output "app-runner-role" {
  value       = aws_iam_role.app-runner-role.arn
  description = "ARN of the IAM role for App Runner access"
}