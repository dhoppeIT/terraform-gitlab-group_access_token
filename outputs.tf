output "active" {
  description = "True if the token is active"
  value       = gitlab_group_access_token.this.active
}

output "created_at" {
  description = "Time the token has been created, RFC3339 format"
  value       = gitlab_group_access_token.this.created_at
}

output "id" {
  description = "The ID of the group access token"
  value       = gitlab_group_access_token.this.id
}

output "revoked" {
  description = "True if the token is revoked"
  value       = gitlab_group_access_token.this.revoked
}

output "token" {
  description = "The token of the group access token"
  value       = gitlab_group_access_token.this.token
  sensitive   = true
}

output "user_id" {
  description = "The user_id associated to the token"
  value       = gitlab_group_access_token.this.user_id
}
