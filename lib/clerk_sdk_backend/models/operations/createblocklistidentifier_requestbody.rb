# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class CreateBlocklistIdentifierRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The identifier to be added in the block-list.
      # This can be an email address, a phone number or a web3 wallet.
      field :identifier, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('identifier') } }


      sig { params(identifier: ::String).void }
      def initialize(identifier: nil)
        @identifier = identifier
      end
    end
  end
end
