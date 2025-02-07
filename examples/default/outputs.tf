output "active" {
  description = "True if the token is active"
  value       = module.gitlab_group_access_token.active
}

output "created_at" {
  description = "Time the token has been created, RFC3339 format"
  value       = module.gitlab_group_access_token.created_at
}

output "id" {
  description = "The ID of the group access token"
  value       = module.gitlab_group_access_token.id
}

output "revoked" {
  description = "True if the token is revoked"
  value       = module.gitlab_group_access_token.revoked
}

output "token" {
  description = "The token of the group access token"
  value       = module.gitlab_group_access_token.token
  sensitive   = true
}

output "user_id" {
  description = "The user_id associated to the token"
  value       = module.gitlab_group_access_token.user_id
}
