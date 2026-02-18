output "access_token" {
  value     = local.parsed.access_token
  sensitive = true
}

output "expires_in" {
  value = local.parsed.expires_in
}

output "token_type" {
  value = local.parsed.token_type
}
