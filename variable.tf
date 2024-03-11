variable "project" {
  type    = string
  default = "symmetry"
}

variable "user_one" {
  type    = string
}

variable "allowed_services_one" {
  type    = string
  default = "ec2, ec2-instance-connect, ebs, ecs, eks, elasticbeanstalk, ecr, ecr-public, execute-api, fms, glue, glacier, guardduty, iam, imagebuilder, kafka-cluster, lambda, organizations, pipes, route53, savingsplans, sagemaker, secretsmanager, securityhub, scheduler, schemas, sns, snowball, sdb, ssm, waf, wafv2, workspaces"
}

variable "allowed_services_two" {
  type    = string
  default = "autoscaling, amplify, apigateway, appmesh, apprunner, backup, backup-gateway, backup-storage, batch, bedrock, compute-optimizer, controltower, codebuild, codecommit, codedeploy, cloudtrail, cloudwatch, directconnect, dynamodb, sqs, s3, elasticloadbalancing, emr-containers, emr-serverless, elasticmapreduce, elastictranscoder, elasticache"
}

variable "allow_cloudwatch_logs_query" {
  type    = bool
  default = true
}

variable "allow_web_console_services" {
  type    = bool
  default = true
}