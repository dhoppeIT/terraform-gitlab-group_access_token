resource "gitlab_group_access_token" "this" {
  group  = var.group
  name   = var.name
  scopes = var.scopes

  access_level                  = var.access_level
  description                   = var.description
  expires_at                    = var.expires_at
  validate_past_expiration_date = var.validate_past_expiration_date

  rotation_configuration = var.rotation_configuration != null ? {
    expiration_days    = var.rotation_configuration["expiration_days"]
    rotate_before_days = var.rotation_configuration["rotate_before_days"]
  } : null
}
