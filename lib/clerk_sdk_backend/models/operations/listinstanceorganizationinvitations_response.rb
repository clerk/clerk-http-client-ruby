# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class ListInstanceOrganizationInvitationsResponse < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Request was not successful
      field :clerk_errors, T.nilable(::ClerkSDKBackend::Shared::ClerkErrors)
      # A list of organization invitations with public organization data
      field :organization_invitations_with_public_organization_data, T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationsWithPublicOrganizationData)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, clerk_errors: T.nilable(::ClerkSDKBackend::Shared::ClerkErrors), organization_invitations_with_public_organization_data: T.nilable(::ClerkSDKBackend::Shared::OrganizationInvitationsWithPublicOrganizationData)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, clerk_errors: nil, organization_invitations_with_public_organization_data: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @clerk_errors = clerk_errors
        @organization_invitations_with_public_organization_data = organization_invitations_with_public_organization_data
      end
    end
  end
end
