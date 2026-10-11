resource "google_backup_dr_backup_plan" "backup_dr_backup_plans" {
  for_each = var.backup_dr_backup_plans

  backup_plan_id                      = each.value.backup_plan_id
  backup_vault                        = each.value.backup_vault
  location                            = each.value.location
  resource_type                       = each.value.resource_type
  deletion_policy                     = each.value.deletion_policy
  description                         = each.value.description
  log_retention_days                  = each.value.log_retention_days
  max_custom_on_demand_retention_days = each.value.max_custom_on_demand_retention_days
  project                             = each.value.project

  dynamic "backup_rules" {
    for_each = each.value.backup_rules != null ? each.value.backup_rules : []
    content {
      backup_retention_days = backup_rules.value.backup_retention_days
      rule_id               = backup_rules.value.rule_id
      standard_schedule {
        dynamic "backup_window" {
          for_each = backup_rules.value.standard_schedule.backup_window != null ? [backup_rules.value.standard_schedule.backup_window] : []
          content {
            end_hour_of_day   = backup_window.value.end_hour_of_day
            start_hour_of_day = backup_window.value.start_hour_of_day
          }
        }
        days_of_month    = backup_rules.value.standard_schedule.days_of_month
        days_of_week     = backup_rules.value.standard_schedule.days_of_week
        hourly_frequency = backup_rules.value.standard_schedule.hourly_frequency
        months           = backup_rules.value.standard_schedule.months
        recurrence_type  = backup_rules.value.standard_schedule.recurrence_type
        time_zone        = backup_rules.value.standard_schedule.time_zone
        dynamic "week_day_of_month" {
          for_each = backup_rules.value.standard_schedule.week_day_of_month != null ? [backup_rules.value.standard_schedule.week_day_of_month] : []
          content {
            day_of_week   = week_day_of_month.value.day_of_week
            week_of_month = week_day_of_month.value.week_of_month
          }
        }
      }
    }
  }

  dynamic "compute_instance_backup_plan_properties" {
    for_each = each.value.compute_instance_backup_plan_properties != null ? [each.value.compute_instance_backup_plan_properties] : []
    content {
      guest_flush = compute_instance_backup_plan_properties.value.guest_flush
    }
  }

  dynamic "disk_backup_plan_properties" {
    for_each = each.value.disk_backup_plan_properties != null ? [each.value.disk_backup_plan_properties] : []
    content {
      guest_flush = disk_backup_plan_properties.value.guest_flush
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

