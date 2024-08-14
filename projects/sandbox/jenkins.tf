# https://saml-doc.okta.com/SAML_Docs/How-to-Configure-SAML-2.0-for-Jenkins.html
resource "okta_app_saml" "personal_jenkins_staging" {
  # The preconfigured app template to use. UI: Application -> Browse App Catalog -> Jenkins
  preconfigured_app = "jenkins"
  # Display name on Okta home page and admin tools
  label                   = "Personal Jenkins Staging"
  status                  = "ACTIVE"
  app_settings_json       = <<JSON
{
    "baseUrl": "https://abc.pqr.com"
}
JSON

}

# Everyone is a default group in OKTA
data "okta_group" "everyone" {
  name = "Everyone"
}

# Everyone should be able to login and have read access to Jenkins
resource "okta_app_group_assignment" "personal_jenkins_staging" {
  app_id   = okta_app_saml.personal_jenkins_staging.id
  group_id = data.okta_group.everyone.id
}

output "metadata" {
  value = okta_app_saml.personal_jenkins_staging.metadata
  description = "This is the IdP Metadata field that is required to configure in Jenkins SAML plugin"
}

output "metadata_url" {
  value = okta_app_saml.personal_jenkins_staging.metadata_url
  description = "This is the IdP Metadata URL field that is required to configure in Jenkins SAML plugin"
}

output "logo_url" {
  value = okta_app_saml.personal_jenkins_staging.logo_url
  description = "This is the optional Logout URL field that can be configured in Jenkins SAML plugin"
}
