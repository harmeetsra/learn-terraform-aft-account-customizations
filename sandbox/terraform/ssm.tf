data "aws_caller_identity" "current" {}

resource "aws_ssm_parameter" "foo" {
  name = "accId",
  type = "String"
  value = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
}
