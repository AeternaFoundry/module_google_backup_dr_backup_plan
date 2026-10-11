output "backup_dr_backup_plans_id" {
  description = "Map of id values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no id are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_dr_backup_plans_backup_plan_id" {
  description = "Map of backup_plan_id values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no backup_plan_id are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.backup_plan_id if v.backup_plan_id != null && length(v.backup_plan_id) > 0 }
}
output "backup_dr_backup_plans_backup_rules" {
  description = "Map of backup_rules values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no backup_rules are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.backup_rules if v.backup_rules != null && length(v.backup_rules) > 0 }
}
output "backup_dr_backup_plans_backup_vault" {
  description = "Map of backup_vault values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no backup_vault are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.backup_vault if v.backup_vault != null && length(v.backup_vault) > 0 }
}
output "backup_dr_backup_plans_backup_vault_service_account" {
  description = "Map of backup_vault_service_account values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no backup_vault_service_account are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.backup_vault_service_account if v.backup_vault_service_account != null && length(v.backup_vault_service_account) > 0 }
}
output "backup_dr_backup_plans_compute_instance_backup_plan_properties" {
  description = "Map of compute_instance_backup_plan_properties values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no compute_instance_backup_plan_properties are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => one(v.compute_instance_backup_plan_properties) if v.compute_instance_backup_plan_properties != null && length(v.compute_instance_backup_plan_properties) > 0 }
}
output "backup_dr_backup_plans_create_time" {
  description = "Map of create_time values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no create_time are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "backup_dr_backup_plans_deletion_policy" {
  description = "Map of deletion_policy values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no deletion_policy are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "backup_dr_backup_plans_description" {
  description = "Map of description values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no description are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.description if v.description != null && length(v.description) > 0 }
}
output "backup_dr_backup_plans_disk_backup_plan_properties" {
  description = "Map of disk_backup_plan_properties values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no disk_backup_plan_properties are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => one(v.disk_backup_plan_properties) if v.disk_backup_plan_properties != null && length(v.disk_backup_plan_properties) > 0 }
}
output "backup_dr_backup_plans_location" {
  description = "Map of location values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no location are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.location if v.location != null && length(v.location) > 0 }
}
output "backup_dr_backup_plans_log_retention_days" {
  description = "Map of log_retention_days values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no log_retention_days are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.log_retention_days if v.log_retention_days != null }
}
output "backup_dr_backup_plans_max_custom_on_demand_retention_days" {
  description = "Map of max_custom_on_demand_retention_days values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no max_custom_on_demand_retention_days are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.max_custom_on_demand_retention_days if v.max_custom_on_demand_retention_days != null }
}
output "backup_dr_backup_plans_name" {
  description = "Map of name values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no name are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.name if v.name != null && length(v.name) > 0 }
}
output "backup_dr_backup_plans_project" {
  description = "Map of project values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no project are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.project if v.project != null && length(v.project) > 0 }
}
output "backup_dr_backup_plans_resource_type" {
  description = "Map of resource_type values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no resource_type are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "backup_dr_backup_plans_supported_resource_types" {
  description = "Map of supported_resource_types values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no supported_resource_types are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.supported_resource_types if v.supported_resource_types != null && length(v.supported_resource_types) > 0 }
}
output "backup_dr_backup_plans_update_time" {
  description = "Map of update_time values across all backup_dr_backup_plans, keyed the same as var.backup_dr_backup_plans except keys with no update_time are omitted"
  value       = { for k, v in google_backup_dr_backup_plan.backup_dr_backup_plans : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

