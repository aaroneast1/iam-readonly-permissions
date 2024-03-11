
module "iam-read-only-policy" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-read-only-policy"
  version                       = "5.37.1"
  name                          = "${var.project}AssessmentReadOnly"
  description                   = "ReadOnly policy for Cyber security assessment."
  allow_cloudwatch_logs_query   = var.allow_cloudwatch_logs_query
  allow_web_console_services    = var.allow_web_console_services
  allowed_services              = tolist(split(", ", var.allowed_services_one))
}

module "iam-read-only-policy2" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-read-only-policy"
  version                       = "5.37.1"
  name                          = "${var.project}AssessmentReadOnly2"
  description                   = "ReadOnly policy for Cyber security assessment."
  allow_cloudwatch_logs_query   = var.allow_cloudwatch_logs_query
  allow_web_console_services    = var.allow_web_console_services
  allowed_services              = tolist(split(", ", var.allowed_services_two))
}

resource "aws_iam_group_policy_attachment" "attach" {
  group      = aws_iam_group.assessment_group.name
  policy_arn = module.iam-read-only-policy.arn
}

resource "aws_iam_group_policy_attachment" "attach2" {
  group      = aws_iam_group.assessment_group.name
  policy_arn = module.iam-read-only-policy2.arn
}

resource "aws_iam_group" "assessment_group" {
  name = "${var.project}ReadOnlyGroup"
  path = "/${var.project}-users/"
}

resource "aws_iam_group_membership" "assessment_team" {
  name = "${var.project}GroupMembership"

  users = [
    var.user_one,
  ]

  group = aws_iam_group.assessment_group.name
}

#
# Use if creating a new user
#
# resource "aws_iam_user" "user_one" {
#   name = "${var.user_one}"
# }

