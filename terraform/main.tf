provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

output "caller" {
  value = {
    account_id = data.aws_caller_identity.current.account_id
    caller_arn = data.aws_caller_identity.current.arn
    user_id    = data.aws_caller_identity.current.user_id
  }
}
