# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class GetOrganizationRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID or slug of the organization
      field :organization_id, ::String, { 'path_param': { 'field_name': 'organization_id', 'style': 'simple', 'explode': false } }
      # Flag to denote whether or not the organization's members count should be included in the response.
      field :include_members_count, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'include_members_count', 'style': 'form', 'explode': true } }


      sig { params(organization_id: ::String, include_members_count: T.nilable(T::Boolean)).void }
      def initialize(organization_id: nil, include_members_count: nil)
        @organization_id = organization_id
        @include_members_count = include_members_count
      end
    end
  end
end