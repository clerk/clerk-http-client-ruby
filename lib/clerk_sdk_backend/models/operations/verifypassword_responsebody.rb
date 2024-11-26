# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  
    # The provided password was correct.
    class VerifyPasswordResponseBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :verified, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('verified') } }


      sig { params(verified: T.nilable(T::Boolean)).void }
      def initialize(verified: nil)
        @verified = verified
      end
    end
  end
end