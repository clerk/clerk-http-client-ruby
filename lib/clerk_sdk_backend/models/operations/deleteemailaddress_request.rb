# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class DeleteEmailAddressRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the email address to delete
      field :email_address_id, ::String, { 'path_param': { 'field_name': 'email_address_id', 'style': 'simple', 'explode': false } }


      sig { params(email_address_id: ::String).void }
      def initialize(email_address_id: nil)
        @email_address_id = email_address_id
      end
    end
  end
end
