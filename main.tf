resource "google_service_account" "default" {
  account_id   = var.account_id
  display_name = var.display_name
}

resource "google_project_iam_member" "role" {
  for_each = var.roles

  project = var.project_id
  member  = "serviceAccount:${google_service_account.default.email}"
  role    = each.value
}