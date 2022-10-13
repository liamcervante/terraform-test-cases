variable "backup_plans_other" {
  type = list(object({
    name = string
    schedules = list(object({
      name = string
    }))
  }))
}
