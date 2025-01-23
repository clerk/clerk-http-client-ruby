=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

# Common files
require 'clerk-http-client/api_client'
require 'clerk-http-client/api_error'
require 'clerk-http-client/version'
require 'clerk-http-client/configuration'

# Models
ClerkHttpClient.autoload :ActorToken, 'clerk-http-client/models/actor_token'
ClerkHttpClient.autoload :AddDomainRequest, 'clerk-http-client/models/add_domain_request'
ClerkHttpClient.autoload :Admin, 'clerk-http-client/models/admin'
ClerkHttpClient.autoload :AllowlistIdentifier, 'clerk-http-client/models/allowlist_identifier'
ClerkHttpClient.autoload :BlocklistIdentifier, 'clerk-http-client/models/blocklist_identifier'
ClerkHttpClient.autoload :BlocklistIdentifiers, 'clerk-http-client/models/blocklist_identifiers'
ClerkHttpClient.autoload :CNameTarget, 'clerk-http-client/models/c_name_target'
ClerkHttpClient.autoload :ChangeProductionInstanceDomainRequest, 'clerk-http-client/models/change_production_instance_domain_request'
ClerkHttpClient.autoload :ClerkError, 'clerk-http-client/models/clerk_error'
ClerkHttpClient.autoload :ClerkErrors, 'clerk-http-client/models/clerk_errors'
ClerkHttpClient.autoload :Client, 'clerk-http-client/models/client'
ClerkHttpClient.autoload :CreateActorTokenRequest, 'clerk-http-client/models/create_actor_token_request'
ClerkHttpClient.autoload :CreateAllowlistIdentifierRequest, 'clerk-http-client/models/create_allowlist_identifier_request'
ClerkHttpClient.autoload :CreateBlocklistIdentifierRequest, 'clerk-http-client/models/create_blocklist_identifier_request'
ClerkHttpClient.autoload :CreateBulkInvitationsRequestInner, 'clerk-http-client/models/create_bulk_invitations_request_inner'
ClerkHttpClient.autoload :CreateEmailAddressRequest, 'clerk-http-client/models/create_email_address_request'
ClerkHttpClient.autoload :CreateInvitationRequest, 'clerk-http-client/models/create_invitation_request'
ClerkHttpClient.autoload :CreateJWTTemplateRequest, 'clerk-http-client/models/create_jwt_template_request'
ClerkHttpClient.autoload :CreateOAuthApplicationRequest, 'clerk-http-client/models/create_o_auth_application_request'
ClerkHttpClient.autoload :CreateOrganizationDomainRequest, 'clerk-http-client/models/create_organization_domain_request'
ClerkHttpClient.autoload :CreateOrganizationInvitationBulkRequestInner, 'clerk-http-client/models/create_organization_invitation_bulk_request_inner'
ClerkHttpClient.autoload :CreateOrganizationInvitationRequest, 'clerk-http-client/models/create_organization_invitation_request'
ClerkHttpClient.autoload :CreateOrganizationMembershipRequest, 'clerk-http-client/models/create_organization_membership_request'
ClerkHttpClient.autoload :CreateOrganizationRequest, 'clerk-http-client/models/create_organization_request'
ClerkHttpClient.autoload :CreatePhoneNumberRequest, 'clerk-http-client/models/create_phone_number_request'
ClerkHttpClient.autoload :CreateRedirectURLRequest, 'clerk-http-client/models/create_redirect_url_request'
ClerkHttpClient.autoload :CreateSAMLConnectionRequest, 'clerk-http-client/models/create_saml_connection_request'
ClerkHttpClient.autoload :CreateSAMLConnectionRequestAttributeMapping, 'clerk-http-client/models/create_saml_connection_request_attribute_mapping'
ClerkHttpClient.autoload :CreateSessionRequest, 'clerk-http-client/models/create_session_request'
ClerkHttpClient.autoload :CreateSessionToken200Response, 'clerk-http-client/models/create_session_token200_response'
ClerkHttpClient.autoload :CreateSessionTokenFromTemplateRequest, 'clerk-http-client/models/create_session_token_from_template_request'
ClerkHttpClient.autoload :CreateSessionTokenRequest, 'clerk-http-client/models/create_session_token_request'
ClerkHttpClient.autoload :CreateSignInTokenRequest, 'clerk-http-client/models/create_sign_in_token_request'
ClerkHttpClient.autoload :CreateUserRequest, 'clerk-http-client/models/create_user_request'
ClerkHttpClient.autoload :CreateWaitlistEntryRequest, 'clerk-http-client/models/create_waitlist_entry_request'
ClerkHttpClient.autoload :DeletedObject, 'clerk-http-client/models/deleted_object'
ClerkHttpClient.autoload :DisableMFA200Response, 'clerk-http-client/models/disable_mfa200_response'
ClerkHttpClient.autoload :Domain, 'clerk-http-client/models/domain'
ClerkHttpClient.autoload :Domains, 'clerk-http-client/models/domains'
ClerkHttpClient.autoload :EmailAddress, 'clerk-http-client/models/email_address'
ClerkHttpClient.autoload :EmailAddressVerification, 'clerk-http-client/models/email_address_verification'
ClerkHttpClient.autoload :FromOAuth, 'clerk-http-client/models/from_o_auth'
ClerkHttpClient.autoload :FromOAuthError, 'clerk-http-client/models/from_o_auth_error'
ClerkHttpClient.autoload :GetOAuthAccessToken200ResponseInner, 'clerk-http-client/models/get_o_auth_access_token200_response_inner'
ClerkHttpClient.autoload :IdentificationLink, 'clerk-http-client/models/identification_link'
ClerkHttpClient.autoload :Instance, 'clerk-http-client/models/instance'
ClerkHttpClient.autoload :InstanceRestrictions, 'clerk-http-client/models/instance_restrictions'
ClerkHttpClient.autoload :Invitation, 'clerk-http-client/models/invitation'
ClerkHttpClient.autoload :JWKS, 'clerk-http-client/models/jwks'
ClerkHttpClient.autoload :JWKSKeysInner, 'clerk-http-client/models/jwks_keys_inner'
ClerkHttpClient.autoload :JWTTemplate, 'clerk-http-client/models/jwt_template'
ClerkHttpClient.autoload :ListWaitlistEntries200Response, 'clerk-http-client/models/list_waitlist_entries200_response'
ClerkHttpClient.autoload :MergeOrganizationMetadataRequest, 'clerk-http-client/models/merge_organization_metadata_request'
ClerkHttpClient.autoload :OAuthApplication, 'clerk-http-client/models/o_auth_application'
ClerkHttpClient.autoload :OAuthApplicationWithSecret, 'clerk-http-client/models/o_auth_application_with_secret'
ClerkHttpClient.autoload :OAuthApplications, 'clerk-http-client/models/o_auth_applications'
ClerkHttpClient.autoload :OTP, 'clerk-http-client/models/otp'
ClerkHttpClient.autoload :Organization, 'clerk-http-client/models/organization'
ClerkHttpClient.autoload :OrganizationDomain, 'clerk-http-client/models/organization_domain'
ClerkHttpClient.autoload :OrganizationDomainVerification, 'clerk-http-client/models/organization_domain_verification'
ClerkHttpClient.autoload :OrganizationDomains, 'clerk-http-client/models/organization_domains'
ClerkHttpClient.autoload :OrganizationInvitation, 'clerk-http-client/models/organization_invitation'
ClerkHttpClient.autoload :OrganizationInvitationWithPublicOrganizationData, 'clerk-http-client/models/organization_invitation_with_public_organization_data'
ClerkHttpClient.autoload :OrganizationInvitationWithPublicOrganizationDataPublicOrganizationData, 'clerk-http-client/models/organization_invitation_with_public_organization_data_public_organization_data'
ClerkHttpClient.autoload :OrganizationInvitations, 'clerk-http-client/models/organization_invitations'
ClerkHttpClient.autoload :OrganizationInvitationsWithPublicOrganizationData, 'clerk-http-client/models/organization_invitations_with_public_organization_data'
ClerkHttpClient.autoload :OrganizationMembership, 'clerk-http-client/models/organization_membership'
ClerkHttpClient.autoload :OrganizationMembershipPublicUserData, 'clerk-http-client/models/organization_membership_public_user_data'
ClerkHttpClient.autoload :OrganizationMemberships, 'clerk-http-client/models/organization_memberships'
ClerkHttpClient.autoload :OrganizationSettings, 'clerk-http-client/models/organization_settings'
ClerkHttpClient.autoload :OrganizationWithLogo, 'clerk-http-client/models/organization_with_logo'
ClerkHttpClient.autoload :Organizations, 'clerk-http-client/models/organizations'
ClerkHttpClient.autoload :Passkey, 'clerk-http-client/models/passkey'
ClerkHttpClient.autoload :PhoneNumber, 'clerk-http-client/models/phone_number'
ClerkHttpClient.autoload :PhoneNumberVerification, 'clerk-http-client/models/phone_number_verification'
ClerkHttpClient.autoload :PreviewTemplateRequest, 'clerk-http-client/models/preview_template_request'
ClerkHttpClient.autoload :ProxyCheck, 'clerk-http-client/models/proxy_check'
ClerkHttpClient.autoload :RedirectURL, 'clerk-http-client/models/redirect_url'
ClerkHttpClient.autoload :RevokeInvitation200Response, 'clerk-http-client/models/revoke_invitation200_response'
ClerkHttpClient.autoload :RevokeOrganizationInvitationRequest, 'clerk-http-client/models/revoke_organization_invitation_request'
ClerkHttpClient.autoload :SAML, 'clerk-http-client/models/saml'
ClerkHttpClient.autoload :SAMLAccount, 'clerk-http-client/models/saml_account'
ClerkHttpClient.autoload :SAMLAccountSamlConnection, 'clerk-http-client/models/saml_account_saml_connection'
ClerkHttpClient.autoload :SAMLAccountVerification, 'clerk-http-client/models/saml_account_verification'
ClerkHttpClient.autoload :SAMLConnection, 'clerk-http-client/models/saml_connection'
ClerkHttpClient.autoload :SAMLConnections, 'clerk-http-client/models/saml_connections'
ClerkHttpClient.autoload :SchemasPasskey, 'clerk-http-client/models/schemas_passkey'
ClerkHttpClient.autoload :SchemasPasskeyVerification, 'clerk-http-client/models/schemas_passkey_verification'
ClerkHttpClient.autoload :SchemasSAMLConnection, 'clerk-http-client/models/schemas_saml_connection'
ClerkHttpClient.autoload :SchemasSAMLConnectionAttributeMapping, 'clerk-http-client/models/schemas_saml_connection_attribute_mapping'
ClerkHttpClient.autoload :Session, 'clerk-http-client/models/session'
ClerkHttpClient.autoload :SessionLatestActivity, 'clerk-http-client/models/session_latest_activity'
ClerkHttpClient.autoload :SignInToken, 'clerk-http-client/models/sign_in_token'
ClerkHttpClient.autoload :SignUp, 'clerk-http-client/models/sign_up'
ClerkHttpClient.autoload :SvixURL, 'clerk-http-client/models/svix_url'
ClerkHttpClient.autoload :TOTP, 'clerk-http-client/models/totp'
ClerkHttpClient.autoload :Template, 'clerk-http-client/models/template'
ClerkHttpClient.autoload :TestingToken, 'clerk-http-client/models/testing_token'
ClerkHttpClient.autoload :Ticket, 'clerk-http-client/models/ticket'
ClerkHttpClient.autoload :ToggleTemplateDeliveryRequest, 'clerk-http-client/models/toggle_template_delivery_request'
ClerkHttpClient.autoload :TotalCount, 'clerk-http-client/models/total_count'
ClerkHttpClient.autoload :UpdateDomainRequest, 'clerk-http-client/models/update_domain_request'
ClerkHttpClient.autoload :UpdateEmailAddressRequest, 'clerk-http-client/models/update_email_address_request'
ClerkHttpClient.autoload :UpdateInstanceAuthConfig200Response, 'clerk-http-client/models/update_instance_auth_config200_response'
ClerkHttpClient.autoload :UpdateInstanceAuthConfigRequest, 'clerk-http-client/models/update_instance_auth_config_request'
ClerkHttpClient.autoload :UpdateInstanceOrganizationSettingsRequest, 'clerk-http-client/models/update_instance_organization_settings_request'
ClerkHttpClient.autoload :UpdateInstanceRequest, 'clerk-http-client/models/update_instance_request'
ClerkHttpClient.autoload :UpdateInstanceRestrictionsRequest, 'clerk-http-client/models/update_instance_restrictions_request'
ClerkHttpClient.autoload :UpdateOAuthApplicationRequest, 'clerk-http-client/models/update_o_auth_application_request'
ClerkHttpClient.autoload :UpdateOrganizationDomainRequest, 'clerk-http-client/models/update_organization_domain_request'
ClerkHttpClient.autoload :UpdateOrganizationMembershipMetadataRequest, 'clerk-http-client/models/update_organization_membership_metadata_request'
ClerkHttpClient.autoload :UpdateOrganizationMembershipRequest, 'clerk-http-client/models/update_organization_membership_request'
ClerkHttpClient.autoload :UpdateOrganizationRequest, 'clerk-http-client/models/update_organization_request'
ClerkHttpClient.autoload :UpdatePhoneNumberRequest, 'clerk-http-client/models/update_phone_number_request'
ClerkHttpClient.autoload :UpdateProductionInstanceDomainRequest, 'clerk-http-client/models/update_production_instance_domain_request'
ClerkHttpClient.autoload :UpdateSAMLConnectionRequest, 'clerk-http-client/models/update_saml_connection_request'
ClerkHttpClient.autoload :UpdateSAMLConnectionRequestAttributeMapping, 'clerk-http-client/models/update_saml_connection_request_attribute_mapping'
ClerkHttpClient.autoload :UpdateSignUpRequest, 'clerk-http-client/models/update_sign_up_request'
ClerkHttpClient.autoload :UpdateUserMetadataRequest, 'clerk-http-client/models/update_user_metadata_request'
ClerkHttpClient.autoload :UpdateUserRequest, 'clerk-http-client/models/update_user_request'
ClerkHttpClient.autoload :UpsertTemplateRequest, 'clerk-http-client/models/upsert_template_request'
ClerkHttpClient.autoload :User, 'clerk-http-client/models/user'
ClerkHttpClient.autoload :VerifyClientRequest, 'clerk-http-client/models/verify_client_request'
ClerkHttpClient.autoload :VerifyDomainProxyRequest, 'clerk-http-client/models/verify_domain_proxy_request'
ClerkHttpClient.autoload :VerifyPassword200Response, 'clerk-http-client/models/verify_password200_response'
ClerkHttpClient.autoload :VerifyPasswordRequest, 'clerk-http-client/models/verify_password_request'
ClerkHttpClient.autoload :VerifySessionRequest, 'clerk-http-client/models/verify_session_request'
ClerkHttpClient.autoload :VerifyTOTP200Response, 'clerk-http-client/models/verify_totp200_response'
ClerkHttpClient.autoload :VerifyTOTPRequest, 'clerk-http-client/models/verify_totp_request'
ClerkHttpClient.autoload :WaitlistEntry, 'clerk-http-client/models/waitlist_entry'
ClerkHttpClient.autoload :Web3Signature, 'clerk-http-client/models/web3_signature'
ClerkHttpClient.autoload :Web3Wallet, 'clerk-http-client/models/web3_wallet'
ClerkHttpClient.autoload :Web3WalletVerification, 'clerk-http-client/models/web3_wallet_verification'

# APIs
ClerkHttpClient.autoload :ActorTokensApi, 'clerk-http-client/api/actor_tokens_api'
ClerkHttpClient.autoload :AllowListBlockListApi, 'clerk-http-client/api/allow_list_block_list_api'
ClerkHttpClient.autoload :BetaFeaturesApi, 'clerk-http-client/api/beta_features_api'
ClerkHttpClient.autoload :ClientsApi, 'clerk-http-client/api/clients_api'
ClerkHttpClient.autoload :DomainsApi, 'clerk-http-client/api/domains_api'
ClerkHttpClient.autoload :EmailAddressesApi, 'clerk-http-client/api/email_addresses_api'
ClerkHttpClient.autoload :EmailSMSTemplatesApi, 'clerk-http-client/api/email_sms_templates_api'
ClerkHttpClient.autoload :InstanceSettingsApi, 'clerk-http-client/api/instance_settings_api'
ClerkHttpClient.autoload :InvitationsApi, 'clerk-http-client/api/invitations_api'
ClerkHttpClient.autoload :JWKSApi, 'clerk-http-client/api/jwks_api'
ClerkHttpClient.autoload :JWTTemplatesApi, 'clerk-http-client/api/jwt_templates_api'
ClerkHttpClient.autoload :MiscellaneousApi, 'clerk-http-client/api/miscellaneous_api'
ClerkHttpClient.autoload :OAuthApplicationsApi, 'clerk-http-client/api/o_auth_applications_api'
ClerkHttpClient.autoload :OrganizationDomainsApi, 'clerk-http-client/api/organization_domains_api'
ClerkHttpClient.autoload :OrganizationInvitationsApi, 'clerk-http-client/api/organization_invitations_api'
ClerkHttpClient.autoload :OrganizationMembershipsApi, 'clerk-http-client/api/organization_memberships_api'
ClerkHttpClient.autoload :OrganizationsApi, 'clerk-http-client/api/organizations_api'
ClerkHttpClient.autoload :PhoneNumbersApi, 'clerk-http-client/api/phone_numbers_api'
ClerkHttpClient.autoload :ProxyChecksApi, 'clerk-http-client/api/proxy_checks_api'
ClerkHttpClient.autoload :RedirectURLsApi, 'clerk-http-client/api/redirect_urls_api'
ClerkHttpClient.autoload :SAMLConnectionsApi, 'clerk-http-client/api/saml_connections_api'
ClerkHttpClient.autoload :SessionsApi, 'clerk-http-client/api/sessions_api'
ClerkHttpClient.autoload :SignInTokensApi, 'clerk-http-client/api/sign_in_tokens_api'
ClerkHttpClient.autoload :SignUpsApi, 'clerk-http-client/api/sign_ups_api'
ClerkHttpClient.autoload :TestingTokensApi, 'clerk-http-client/api/testing_tokens_api'
ClerkHttpClient.autoload :UsersApi, 'clerk-http-client/api/users_api'
ClerkHttpClient.autoload :WaitlistEntriesApi, 'clerk-http-client/api/waitlist_entries_api'
ClerkHttpClient.autoload :WebhooksApi, 'clerk-http-client/api/webhooks_api'

module ClerkHttpClient
  class << self
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
    end

    def actor_tokens
      ClerkHttpClient::ActorTokensApi.new
    end

    def allow_list_block_list
      ClerkHttpClient::AllowListBlockListApi.new
    end

    def beta_features
      ClerkHttpClient::BetaFeaturesApi.new
    end

    def clients
      ClerkHttpClient::ClientsApi.new
    end

    def domains
      ClerkHttpClient::DomainsApi.new
    end

    def email_addresses
      ClerkHttpClient::EmailAddressesApi.new
    end

    def email_sms_templates
      ClerkHttpClient::EmailSMSTemplatesApi.new
    end

    def instance_settings
      ClerkHttpClient::InstanceSettingsApi.new
    end

    def invitations
      ClerkHttpClient::InvitationsApi.new
    end

    def jwks
      ClerkHttpClient::JWKSApi.new
    end

    def jwt_templates
      ClerkHttpClient::JWTTemplatesApi.new
    end

    def miscellaneous
      ClerkHttpClient::MiscellaneousApi.new
    end

    def oauth_applications
      ClerkHttpClient::OAuthApplicationsApi.new
    end

    def organization_domains
      ClerkHttpClient::OrganizationDomainsApi.new
    end

    def organization_invitations
      ClerkHttpClient::OrganizationInvitationsApi.new
    end

    def organization_memberships
      ClerkHttpClient::OrganizationMembershipsApi.new
    end

    def organizations
      ClerkHttpClient::OrganizationsApi.new
    end

    def phone_numbers
      ClerkHttpClient::PhoneNumbersApi.new
    end

    def proxy_checks
      ClerkHttpClient::ProxyChecksApi.new
    end

    def redirect_urls
      ClerkHttpClient::RedirectURLsApi.new
    end

    def saml_connections
      ClerkHttpClient::SAMLConnectionsApi.new
    end

    def sessions
      ClerkHttpClient::SessionsApi.new
    end

    def sign_in_tokens
      ClerkHttpClient::SignInTokensApi.new
    end

    def sign_ups
      ClerkHttpClient::SignUpsApi.new
    end

    def testing_tokens
      ClerkHttpClient::TestingTokensApi.new
    end

    def users
      ClerkHttpClient::UsersApi.new
    end

    def waitlist_entries
      ClerkHttpClient::WaitlistEntriesApi.new
    end

    def webhooks
      ClerkHttpClient::WebhooksApi.new
    end

  end  
end
