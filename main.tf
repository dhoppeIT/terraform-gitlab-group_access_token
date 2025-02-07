resource "gitlab_group_access_token" "this" {
  group  = var.group
  name   = var.name
  scopes = var.scopes

  access_level = var.access_level
  expires_at   = var.expires_at

  rotation_configuration = {
    expiration_days    = try(var.rotation_configuration["expiration_days"], null)
    rotate_before_days = try(var.rotation_configuration["rotate_before_days"], null)
  }
}
