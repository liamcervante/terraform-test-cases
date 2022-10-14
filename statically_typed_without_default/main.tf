module "this" {
  source       = "./module"
  backup_plans = var.backup_plans
}

variable "backup_plans" {
  description = "definition for the global backup"
  type        = set(any)
  default = [
    {
      name = "test1"
      schedules = [
        {
          name = "daily"
        },
      ]
    },
    {
      name = "test2"
      schedules = [
        {
          name = "daily"
        },
        {
          name = "weekly"
          cold_storage_after = 0
        }
      ]
    },
  ]
}
