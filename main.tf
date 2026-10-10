resource "aws_inspector2_organization_configuration" "inspector2_organization_configurations" {
  for_each = var.inspector2_organization_configurations

  region = each.value.region

  auto_enable {
    code_repository = each.value.auto_enable.code_repository
    ec2             = each.value.auto_enable.ec2
    ecr             = each.value.auto_enable.ecr
    lambda          = each.value.auto_enable.lambda
    lambda_code     = each.value.auto_enable.lambda_code
  }
}

