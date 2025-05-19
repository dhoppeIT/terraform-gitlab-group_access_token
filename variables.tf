variable "group" {
  type        = string
  description = "The ID or full path of the group"
}

variable "name" {
  type        = string
  description = "The name of the group access token"
}

variable "scopes" {
  type        = list(string)
  description = "The scopes of the group access token"

  # validation {
  #   condition     = contains(["api", "read_api", "read_registry", "write_registry", "read_repository", "write_repository", "create_runner", "manage_runner", "ai_features", "k8s_proxy", "read_observability", "write_observability"], var.scopes)
  #   error_message = "Valid values are api, read_api, read_registry, write_registry, read_repository, write_repository, create_runner, manage_runner, ai_features, k8s_proxy, read_observability, write_observability"
  # }
}

variable "access_level" {
  type        = string
  default     = "maintainer"
  description = "The access level for the group access token"

  validation {
    condition     = contains(["no one", "minimal", "guest", "reporter", "developer", "maintainer", "owner"], var.access_level)
    error_message = "Valid values are no one, minimal, guest, reporter, developer, maintainer, owner"
  }
}

variable "description" {
  type        = string
  default     = null
  description = "The description of the group access token"
}

variable "expires_at" {
  type        = string
  default     = null
  description = "When the token will expire, YYYY-MM-DD format"
}

variable "rotation_configuration" {
  type = object(
    {
      expiration_days    = optional(number)
      rotate_before_days = optional(number)
    }
  )
  default     = {}
  description = "The configuration for when to rotate a token automatically"
}
