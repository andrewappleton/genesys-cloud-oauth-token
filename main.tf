terraform {
  required_providers {
    terracurl = {
      source  = "devops-rob/terracurl"
      version = ">= 2.2.0"
    }
  }
}

locals {
  basic_auth = base64encode("${var.client_id}:${var.client_secret}")
}

resource "terracurl_request" "oauth" {
  name    = "genesys-oauth-token"
  url     = "https://login.${var.gc_region}/oauth/token"
  method  = "POST"

  headers = {
    "Authorization" = "Basic ${local.basic_auth}"
    "Content-Type"  = "application/x-www-form-urlencoded"
  }

  request_body   = "grant_type=client_credentials"
  response_codes = ["200"]
}

locals {
  parsed = jsondecode(terracurl_request.oauth.response)
}