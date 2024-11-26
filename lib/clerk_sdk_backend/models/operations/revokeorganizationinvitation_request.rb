# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class RevokeOrganizationInvitationRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The organization invitation ID.
      field :invitation_id, ::String, { 'path_param': { 'field_name': 'invitation_id', 'style': 'simple', 'explode': false } }
      # The organization ID.
      field :organization_id, ::String, { 'path_param': { 'field_name': 'organization_id', 'style': 'simple', 'explode': false } }

      field :request_body, T.nilable(::ClerkSDKBackend::Operations::RevokeOrganizationInvitationRequestBody), { 'request': { 'media_type': 'application/json' } }


      sig { params(invitation_id: ::String, organization_id: ::String, request_body: T.nilable(::ClerkSDKBackend::Operations::RevokeOrganizationInvitationRequestBody)).void }
      def initialize(invitation_id: nil, organization_id: nil, request_body: nil)
        @invitation_id = invitation_id
        @organization_id = organization_id
        @request_body = request_body
      end
    end
  end
end
