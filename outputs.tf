output "sns_topic_arn" {
  description = "The ARN of the SNS topic used"
  value       = local.sns_topic_arn
}

output "sns_topic_name" {
  description = "The ARN of the SNS topic used"
  value       = aws_sns_topic.default.name
}

output "dashboard_combined" {
  description = "URL to CloudWatch Combined Metric Dashboard"
  value       = "https://console.aws.amazon.com/cloudwatch/home?region=${var.region}#dashboards:name=${join("", aws_cloudwatch_dashboard.main.*.dashboard_name)}"
}

# output "dashboard_individual" {
#   description = "URL to CloudWatch Individual Metric Dashboard"
#   value = "https://console.aws.amazon.com/cloudwatch/home?region=${var.region}#dashboards:name=${join(
#     "",
#     aws_cloudwatch_dashboard.main_individual.*.dashboard_name,
#   )}"
# }
