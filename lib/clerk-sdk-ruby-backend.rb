=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

# Common files
require 'clerk-sdk-ruby-backend/api_client'
require 'clerk-sdk-ruby-backend/api_error'
require 'clerk-sdk-ruby-backend/version'
require 'clerk-sdk-ruby-backend/configuration'

# Models
require 'clerk-sdk-ruby-backend/models/actor_token'
require 'clerk-sdk-ruby-backend/models/add_domain_request'
require 'clerk-sdk-ruby-backend/models/admin'
require 'clerk-sdk-ruby-backend/models/allowlist_identifier'
require 'clerk-sdk-ruby-backend/models/blocklist_identifier'
require 'clerk-sdk-ruby-backend/models/blocklist_identifiers'
require 'clerk-sdk-ruby-backend/models/c_name_target'
require 'clerk-sdk-ruby-backend/models/change_production_instance_domain_request'
require 'clerk-sdk-ruby-backend/models/clerk_error'
require 'clerk-sdk-ruby-backend/models/clerk_errors'
require 'clerk-sdk-ruby-backend/models/client'
require 'clerk-sdk-ruby-backend/models/create_actor_token_request'
require 'clerk-sdk-ruby-backend/models/create_allowlist_identifier_request'
require 'clerk-sdk-ruby-backend/models/create_blocklist_identifier_request'
require 'clerk-sdk-ruby-backend/models/create_email_address_request'
require 'clerk-sdk-ruby-backend/models/create_invitation_request'
require 'clerk-sdk-ruby-backend/models/create_jwt_template_request'
require 'clerk-sdk-ruby-backend/models/create_o_auth_application_request'
require 'clerk-sdk-ruby-backend/models/create_organization_domain_request'
require 'clerk-sdk-ruby-backend/models/create_organization_invitation_bulk_request_inner'
require 'clerk-sdk-ruby-backend/models/create_organization_invitation_request'
require 'clerk-sdk-ruby-backend/models/create_organization_membership_request'
require 'clerk-sdk-ruby-backend/models/create_organization_request'
require 'clerk-sdk-ruby-backend/models/create_phone_number_request'
require 'clerk-sdk-ruby-backend/models/create_redirect_url_request'
require 'clerk-sdk-ruby-backend/models/create_saml_connection_request'
require 'clerk-sdk-ruby-backend/models/create_saml_connection_request_attribute_mapping'
require 'clerk-sdk-ruby-backend/models/create_session_token_from_template200_response'
require 'clerk-sdk-ruby-backend/models/create_sign_in_token_request'
require 'clerk-sdk-ruby-backend/models/create_user_request'
require 'clerk-sdk-ruby-backend/models/deleted_object'
require 'clerk-sdk-ruby-backend/models/disable_mfa200_response'
require 'clerk-sdk-ruby-backend/models/domain'
require 'clerk-sdk-ruby-backend/models/domains'
require 'clerk-sdk-ruby-backend/models/email_address'
require 'clerk-sdk-ruby-backend/models/email_address_verification'
require 'clerk-sdk-ruby-backend/models/get_o_auth_access_token200_response_inner'
require 'clerk-sdk-ruby-backend/models/identification_link'
require 'clerk-sdk-ruby-backend/models/instance_restrictions'
require 'clerk-sdk-ruby-backend/models/invitation'
require 'clerk-sdk-ruby-backend/models/jwt_template'
require 'clerk-sdk-ruby-backend/models/merge_organization_metadata_request'
require 'clerk-sdk-ruby-backend/models/o_auth_application'
require 'clerk-sdk-ruby-backend/models/o_auth_application_with_secret'
require 'clerk-sdk-ruby-backend/models/o_auth_applications'
require 'clerk-sdk-ruby-backend/models/otp'
require 'clerk-sdk-ruby-backend/models/oauth'
require 'clerk-sdk-ruby-backend/models/oauth_error'
require 'clerk-sdk-ruby-backend/models/organization'
require 'clerk-sdk-ruby-backend/models/organization_domain'
require 'clerk-sdk-ruby-backend/models/organization_domain_verification'
require 'clerk-sdk-ruby-backend/models/organization_domains'
require 'clerk-sdk-ruby-backend/models/organization_invitation'
require 'clerk-sdk-ruby-backend/models/organization_invitations'
require 'clerk-sdk-ruby-backend/models/organization_membership'
require 'clerk-sdk-ruby-backend/models/organization_membership_public_user_data'
require 'clerk-sdk-ruby-backend/models/organization_memberships'
require 'clerk-sdk-ruby-backend/models/organization_settings'
require 'clerk-sdk-ruby-backend/models/organization_with_logo'
require 'clerk-sdk-ruby-backend/models/organizations'
require 'clerk-sdk-ruby-backend/models/passkey'
require 'clerk-sdk-ruby-backend/models/phone_number'
require 'clerk-sdk-ruby-backend/models/phone_number_verification'
require 'clerk-sdk-ruby-backend/models/preview_template_request'
require 'clerk-sdk-ruby-backend/models/proxy_check'
require 'clerk-sdk-ruby-backend/models/redirect_url'
require 'clerk-sdk-ruby-backend/models/revoke_invitation200_response'
require 'clerk-sdk-ruby-backend/models/revoke_organization_invitation_request'
require 'clerk-sdk-ruby-backend/models/saml'
require 'clerk-sdk-ruby-backend/models/saml_account'
require 'clerk-sdk-ruby-backend/models/saml_account_saml_connection'
require 'clerk-sdk-ruby-backend/models/saml_account_verification'
require 'clerk-sdk-ruby-backend/models/saml_connection'
require 'clerk-sdk-ruby-backend/models/saml_connections'
require 'clerk-sdk-ruby-backend/models/schemas_passkey'
require 'clerk-sdk-ruby-backend/models/schemas_passkey_verification'
require 'clerk-sdk-ruby-backend/models/schemas_saml_connection'
require 'clerk-sdk-ruby-backend/models/schemas_saml_connection_attribute_mapping'
require 'clerk-sdk-ruby-backend/models/session'
require 'clerk-sdk-ruby-backend/models/sign_in_token'
require 'clerk-sdk-ruby-backend/models/sign_up'
require 'clerk-sdk-ruby-backend/models/svix_url'
require 'clerk-sdk-ruby-backend/models/totp'
require 'clerk-sdk-ruby-backend/models/template'
require 'clerk-sdk-ruby-backend/models/testing_token'
require 'clerk-sdk-ruby-backend/models/ticket'
require 'clerk-sdk-ruby-backend/models/toggle_template_delivery_request'
require 'clerk-sdk-ruby-backend/models/total_count'
require 'clerk-sdk-ruby-backend/models/update_domain_request'
require 'clerk-sdk-ruby-backend/models/update_email_address_request'
require 'clerk-sdk-ruby-backend/models/update_instance_auth_config200_response'
require 'clerk-sdk-ruby-backend/models/update_instance_auth_config_request'
require 'clerk-sdk-ruby-backend/models/update_instance_organization_settings_request'
require 'clerk-sdk-ruby-backend/models/update_instance_request'
require 'clerk-sdk-ruby-backend/models/update_instance_restrictions_request'
require 'clerk-sdk-ruby-backend/models/update_o_auth_application_request'
require 'clerk-sdk-ruby-backend/models/update_organization_domain_request'
require 'clerk-sdk-ruby-backend/models/update_organization_membership_metadata_request'
require 'clerk-sdk-ruby-backend/models/update_organization_membership_request'
require 'clerk-sdk-ruby-backend/models/update_organization_request'
require 'clerk-sdk-ruby-backend/models/update_phone_number_request'
require 'clerk-sdk-ruby-backend/models/update_production_instance_domain_request'
require 'clerk-sdk-ruby-backend/models/update_saml_connection_request'
require 'clerk-sdk-ruby-backend/models/update_saml_connection_request_attribute_mapping'
require 'clerk-sdk-ruby-backend/models/update_sign_up_request'
require 'clerk-sdk-ruby-backend/models/update_user_metadata_request'
require 'clerk-sdk-ruby-backend/models/update_user_request'
require 'clerk-sdk-ruby-backend/models/upsert_template_request'
require 'clerk-sdk-ruby-backend/models/user'
require 'clerk-sdk-ruby-backend/models/verify_client_request'
require 'clerk-sdk-ruby-backend/models/verify_domain_proxy_request'
require 'clerk-sdk-ruby-backend/models/verify_password200_response'
require 'clerk-sdk-ruby-backend/models/verify_password_request'
require 'clerk-sdk-ruby-backend/models/verify_session_request'
require 'clerk-sdk-ruby-backend/models/verify_totp200_response'
require 'clerk-sdk-ruby-backend/models/verify_totp_request'
require 'clerk-sdk-ruby-backend/models/web3_signature'
require 'clerk-sdk-ruby-backend/models/web3_wallet'
require 'clerk-sdk-ruby-backend/models/web3_wallet_verification'
require 'clerk-sdk-ruby-backend/models/well_known_jwks'
require 'clerk-sdk-ruby-backend/models/well_known_jwks_keys_inner'

# APIs
require 'clerk-sdk-ruby-backend/api/actor_tokens_api'
require 'clerk-sdk-ruby-backend/api/allow_list_block_list_api'
require 'clerk-sdk-ruby-backend/api/beta_features_api'
require 'clerk-sdk-ruby-backend/api/clients_api'
require 'clerk-sdk-ruby-backend/api/domains_api'
require 'clerk-sdk-ruby-backend/api/email_addresses_api'
require 'clerk-sdk-ruby-backend/api/email_sms_templates_api'
require 'clerk-sdk-ruby-backend/api/instance_settings_api'
require 'clerk-sdk-ruby-backend/api/invitations_api'
require 'clerk-sdk-ruby-backend/api/jwks_api'
require 'clerk-sdk-ruby-backend/api/jwt_templates_api'
require 'clerk-sdk-ruby-backend/api/miscellaneous_api'
require 'clerk-sdk-ruby-backend/api/o_auth_applications_api'
require 'clerk-sdk-ruby-backend/api/organization_domain_api'
require 'clerk-sdk-ruby-backend/api/organization_domains_api'
require 'clerk-sdk-ruby-backend/api/organization_invitations_api'
require 'clerk-sdk-ruby-backend/api/organization_memberships_api'
require 'clerk-sdk-ruby-backend/api/organizations_api'
require 'clerk-sdk-ruby-backend/api/phone_numbers_api'
require 'clerk-sdk-ruby-backend/api/proxy_checks_api'
require 'clerk-sdk-ruby-backend/api/redirect_urls_api'
require 'clerk-sdk-ruby-backend/api/saml_connections_api'
require 'clerk-sdk-ruby-backend/api/sessions_api'
require 'clerk-sdk-ruby-backend/api/sign_in_tokens_api'
require 'clerk-sdk-ruby-backend/api/sign_ups_api'
require 'clerk-sdk-ruby-backend/api/testing_tokens_api'
require 'clerk-sdk-ruby-backend/api/users_api'
require 'clerk-sdk-ruby-backend/api/webhooks_api'

module ClerkBackend
  class << self
    # Customize default settings for the SDK using block.
    #   ClerkBackend.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end

  class SDK
    attr_accessor :config

    def initialize(config = Configuration.default)
      @config = config
      api_suffix = 'api'

      methods.each do |m|
        next unless m.end_with?(api_suffix)

        alias_name = m.to_s.delete_suffix(api_suffix)
        self.class.send(:alias_method, alias_name.to_sym, m)
      end
    end

    def actortokensapi
      ClerkBackend::ActorTokensApi.new
    end

    def allowlistblocklistapi
      ClerkBackend::AllowListBlockListApi.new
    end

    def betafeaturesapi
      ClerkBackend::BetaFeaturesApi.new
    end

    def clientsapi
      ClerkBackend::ClientsApi.new
    end

    def domainsapi
      ClerkBackend::DomainsApi.new
    end

    def emailaddressesapi
      ClerkBackend::EmailAddressesApi.new
    end

    def emailsmstemplatesapi
      ClerkBackend::EmailSMSTemplatesApi.new
    end

    def instancesettingsapi
      ClerkBackend::InstanceSettingsApi.new
    end

    def invitationsapi
      ClerkBackend::InvitationsApi.new
    end

    def jwksapi
      ClerkBackend::JWKSApi.new
    end

    def jwttemplatesapi
      ClerkBackend::JWTTemplatesApi.new
    end

    def miscellaneousapi
      ClerkBackend::MiscellaneousApi.new
    end

    def oauthapplicationsapi
      ClerkBackend::OAuthApplicationsApi.new
    end

    def organizationdomainapi
      ClerkBackend::OrganizationDomainApi.new
    end

    def organizationdomainsapi
      ClerkBackend::OrganizationDomainsApi.new
    end

    def organizationinvitationsapi
      ClerkBackend::OrganizationInvitationsApi.new
    end

    def organizationmembershipsapi
      ClerkBackend::OrganizationMembershipsApi.new
    end

    def organizationsapi
      ClerkBackend::OrganizationsApi.new
    end

    def phonenumbersapi
      ClerkBackend::PhoneNumbersApi.new
    end

    def proxychecksapi
      ClerkBackend::ProxyChecksApi.new
    end

    def redirecturlsapi
      ClerkBackend::RedirectURLsApi.new
    end

    def samlconnectionsapi
      ClerkBackend::SAMLConnectionsApi.new
    end

    def sessionsapi
      ClerkBackend::SessionsApi.new
    end

    def signintokensapi
      ClerkBackend::SignInTokensApi.new
    end

    def signupsapi
      ClerkBackend::SignUpsApi.new
    end

    def testingtokensapi
      ClerkBackend::TestingTokensApi.new
    end

    def usersapi
      ClerkBackend::UsersApi.new
    end

    def webhooksapi
      ClerkBackend::WebhooksApi.new
    end

  end  
end
