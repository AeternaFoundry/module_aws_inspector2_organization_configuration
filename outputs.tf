output "inspector2_organization_configurations_id" {
  description = "Map of id values across all inspector2_organization_configurations, keyed the same as var.inspector2_organization_configurations"
  value       = { for k, v in aws_inspector2_organization_configuration.inspector2_organization_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "inspector2_organization_configurations_auto_enable" {
  description = "Map of auto_enable values across all inspector2_organization_configurations, keyed the same as var.inspector2_organization_configurations"
  value       = { for k, v in aws_inspector2_organization_configuration.inspector2_organization_configurations : k => one(v.auto_enable) if v.auto_enable != null && length(v.auto_enable) > 0 }
}
output "inspector2_organization_configurations_max_account_limit_reached" {
  description = "Map of max_account_limit_reached values across all inspector2_organization_configurations, keyed the same as var.inspector2_organization_configurations"
  value       = { for k, v in aws_inspector2_organization_configuration.inspector2_organization_configurations : k => v.max_account_limit_reached if v.max_account_limit_reached != null }
}
output "inspector2_organization_configurations_region" {
  description = "Map of region values across all inspector2_organization_configurations, keyed the same as var.inspector2_organization_configurations"
  value       = { for k, v in aws_inspector2_organization_configuration.inspector2_organization_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

