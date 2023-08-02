# Service Account

Terraform module which creates a service account on GCP.

## Usage


```terraform
module "application" {
  source       = "git@bitbucket.org:linnify/terraform-service-account.git?ref=<version>"
  project_id   = var.project_id
  account_id   = "application"
  display_name = "Application"
  roles        = [
    "roles/secretmanager.secretAccessor",
    "roles/iam.serviceAccountTokenCreator",
    "roles/cloudsql.admin",
    ...
    ...
  ]
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.76.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_service_account.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account Id | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The name that would display-ed for this specific service account | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project id | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | Roles that would be assigned for this specific account entry | `set(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account"></a> [service\_account](#output\_service\_account) | Service account email |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Further development
1. Make sure you have [`terraform-docs`](https://formulae.brew.sh/formula/terraform-docs) installed locally. You can use `brew install terraform-docs` to install it.
2. Install the pre-commit configuration on your local repository with `pre-commit install`. If you don't have `pre-commit` installed, you can also install it using `brew`.
3. Always use a **Pull Request** to make changes to the `master` branch.
