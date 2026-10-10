variable "inspector2_organization_configurations" {
  description = <<EOT
Map of inspector2_organization_configurations, attributes below
Required:
    - auto_enable (block):
        - code_repository (optional)
        - ec2 (required)
        - ecr (required)
        - lambda (optional)
        - lambda_code (optional)
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
    auto_enable = object({
      code_repository = optional(bool)
      ec2             = bool
      ecr             = bool
      lambda          = optional(bool)
      lambda_code     = optional(bool)
    })
  }))
}

