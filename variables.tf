variable "client_id" {
  type        = string
  description = "Genesys Cloud OAuth client ID"
}

variable "client_secret" {
  type        = string
  description = "Genesys Cloud OAuth client secret"
  sensitive   = true
}

variable "gc_region" {
  type        = string
  description = "Genesys Cloud region (e.g. mypurecloud.ie)"
}