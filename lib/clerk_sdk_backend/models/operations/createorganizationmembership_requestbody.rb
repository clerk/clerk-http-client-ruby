# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class CreateOrganizationMembershipRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The role that the new member will have in the organization.
      field :role, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('role') } }
      # The ID of the user that will be added as a member in the organization.
      # The user needs to exist in the same instance as the organization and must not be a member of the given organization already.
      field :user_id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('user_id') } }


      sig { params(role: ::String, user_id: ::String).void }
      def initialize(role: nil, user_id: nil)
        @role = role
        @user_id = user_id
      end
    end
  end
end