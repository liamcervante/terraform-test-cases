variable "backup_plans" {
  type = set(object({
    name = string
    schedules = set(object({
      name = string
      cold_storage_after = optional(number)
    }))
  }))
}
