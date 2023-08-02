variable "account_id" {
  type        = string
  description = "Account Id"
}

variable "display_name" {
  type        = string
  description = "The name that would display-ed for this specific service account"
}

variable "project_id" {
  type        = string
  description = "Project id"
}

variable "roles" {
  type        = set(string)
  description = "Roles that would be assigned for this specific account entry"
}
