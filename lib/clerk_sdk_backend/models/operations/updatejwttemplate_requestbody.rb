# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class UpdateJWTTemplateRequestBody < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # JWT token allowed clock skew
      field :allowed_clock_skew, T.nilable(::Float), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('allowed_clock_skew') } }
      # JWT template claims in JSON format
      field :claims, T.nilable(::ClerkSDKBackend::Operations::UpdateJWTTemplateClaims), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('claims') } }
      # Whether a custom signing key/algorithm is also provided for this template
      field :custom_signing_key, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('custom_signing_key') } }
      # JWT token lifetime
      field :lifetime, T.nilable(::Float), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('lifetime') } }
      # JWT template name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }
      # The custom signing algorithm to use when minting JWTs
      field :signing_algorithm, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('signing_algorithm') } }
      # The custom signing private key to use when minting JWTs
      field :signing_key, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('signing_key') } }


      sig { params(allowed_clock_skew: T.nilable(::Float), claims: T.nilable(::ClerkSDKBackend::Operations::UpdateJWTTemplateClaims), custom_signing_key: T.nilable(T::Boolean), lifetime: T.nilable(::Float), name: T.nilable(::String), signing_algorithm: T.nilable(::String), signing_key: T.nilable(::String)).void }
      def initialize(allowed_clock_skew: nil, claims: nil, custom_signing_key: nil, lifetime: nil, name: nil, signing_algorithm: nil, signing_key: nil)
        @allowed_clock_skew = allowed_clock_skew
        @claims = claims
        @custom_signing_key = custom_signing_key
        @lifetime = lifetime
        @name = name
        @signing_algorithm = signing_algorithm
        @signing_key = signing_key
      end
    end
  end
end