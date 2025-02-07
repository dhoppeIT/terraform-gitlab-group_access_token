module "gitlab_group_access_token" {
  source = "../../"

  group  = "example-group-48165"
  name   = "example-access-token"
  scopes = ["read_api"]

  rotation_configuration = {
    expiration_days    = 365
    rotate_before_days = 7
  }
}
