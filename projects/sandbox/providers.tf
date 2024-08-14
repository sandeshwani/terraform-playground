terraform {

  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 4.9.1"
    }
  }

  required_version = ">= 1.7.0"

}

provider "okta" {
  org_name    = var.okta_org_name
  base_url    = var.okta_base_url
  api_token   = var.okta_api_token
#   client_id   = var.okta_oauth_client_id
#   private_key = var.okta_oauth_private_key
#   scopes      = ["okta.apps.manage", "okta.policies.read"]
}
