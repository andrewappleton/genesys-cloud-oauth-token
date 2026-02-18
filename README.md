# Terraform Module: Genesys Cloud OAuth Token (Client Credentials)

This Terraform module retrieves an OAuth access token from Genesys Cloud using the
Client Credentials grant type. It uses the `terracurl` provider to perform the
token request.

## Features

- Simple, lightweight, dependency‑free
- Supports any Genesys Cloud region (mypurecloud.com, mypurecloud.ie, etc.)
- Returns `access_token`, `expires_in`, and `token_type`
- Works with public GitHub (no authentication required)

---

## Usage

```hcl
module "genesys_oauth" {
  source = "github.com/andrewappleton/genesys-cloud-oauth-token?ref=v1.0.0"

  client_id     = "Your OAuth Client ID"       # Your OAuth Client ID
  client_secret = "Your OAuth Client Secret"   # Valid OAuth Client Secret
  gc_region     = "mypurecloud.ie"             # Your Genesys Cloud Region, i.e. mypurecloud.ie
}

output "token" {
  value     = module.genesys_oauth.access_token
  sensitive = true
}
