variable "okta_org_name" {
  description = "The Okta organization name"
  type        = string
  #Example: https://abc-1234.okta.com/
}

variable "okta_base_url" {
  description = "The Okta Base URL (e.g. oktapreview.com or okta.com)"
  type        = string
  default     = "okta.com"
  #Example: https://abc-1234.okta.com/
}

variable "okta_api_token" {
  description = "api token"
  type = string
  # Create now API KEY: Admin -> Security -> API -> Tokens
}

# variable "okta_oauth_client_id" {
#   description = "The Okta OAuth client ID for access to admin APIs"
#   type        = string
# }

# variable "okta_oauth_private_key" {
#   description = "The Okta OAuth key for access to admin APIs"
#   type        = string
# }
