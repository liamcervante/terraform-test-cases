module "this" {
  source             = "./module"
  backup_plans_other = var.backup_plans
}

variable "backup_plans" {
  description = "definition for the global backup"
  type        = list(any)
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
        }
      ]
    },
  ]
}
