# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class Keys < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :alg, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('alg') } }

      field :e, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('e') } }

      field :kid, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('kid') } }

      field :kty, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('kty') } }

      field :n, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('n') } }

      field :use, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('use') } }


      sig { params(alg: T.nilable(::String), e: T.nilable(::String), kid: T.nilable(::String), kty: T.nilable(::String), n: T.nilable(::String), use: T.nilable(::String)).void }
      def initialize(alg: nil, e: nil, kid: nil, kty: nil, n: nil, use: nil)
        @alg = alg
        @e = e
        @kid = kid
        @kty = kty
        @n = n
        @use = use
      end
    end
  end
end
