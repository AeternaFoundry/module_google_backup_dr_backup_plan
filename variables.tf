variable "backup_dr_backup_plans" {
  description = <<EOT
Map of backup_dr_backup_plans, attributes below
Required:
    - backup_plan_id
    - backup_vault
    - location
    - resource_type
Optional:
    - deletion_policy
    - description
    - log_retention_days
    - max_custom_on_demand_retention_days
    - project
    - backup_rules (block):
        - backup_retention_days (required)
        - rule_id (required)
        - standard_schedule (required, block):
            - backup_window (optional, block):
                - end_hour_of_day (optional)
                - start_hour_of_day (required)
            - days_of_month (optional)
            - days_of_week (optional)
            - hourly_frequency (optional)
            - months (optional)
            - recurrence_type (required)
            - time_zone (required)
            - week_day_of_month (optional, block):
                - day_of_week (required)
                - week_of_month (required)
    - compute_instance_backup_plan_properties (block):
        - guest_flush (required)
    - disk_backup_plan_properties (block):
        - guest_flush (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    backup_plan_id                      = string
    backup_vault                        = string
    location                            = string
    resource_type                       = string
    deletion_policy                     = optional(string)
    description                         = optional(string)
    log_retention_days                  = optional(number)
    max_custom_on_demand_retention_days = optional(number)
    project                             = optional(string)
    backup_rules = optional(list(object({
      backup_retention_days = number
      rule_id               = string
      standard_schedule = object({
        backup_window = optional(object({
          end_hour_of_day   = optional(number)
          start_hour_of_day = number
        }))
        days_of_month    = optional(list(number))
        days_of_week     = optional(list(string))
        hourly_frequency = optional(number)
        months           = optional(list(string))
        recurrence_type  = string
        time_zone        = string
        week_day_of_month = optional(object({
          day_of_week   = string
          week_of_month = string
        }))
      })
    })))
    compute_instance_backup_plan_properties = optional(object({
      guest_flush = bool
    }))
    disk_backup_plan_properties = optional(object({
      guest_flush = bool
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

