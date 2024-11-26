# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # InstanceSettings Server API
    class InstanceSettings < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :enhanced_email_deliverability, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('enhanced_email_deliverability') } }

      field :from_email_address, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('from_email_address') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }
      # String representing the object's type. Objects of the same type share the same value.
      field :object, T.nilable(::ClerkSDKBackend::Shared::InstanceSettingsObject), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::InstanceSettingsObject, true) } }

      field :progressive_sign_up, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('progressive_sign_up') } }

      field :restricted_to_allowlist, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('restricted_to_allowlist') } }


      sig { params(enhanced_email_deliverability: T.nilable(T::Boolean), from_email_address: T.nilable(::String), id: T.nilable(::String), object: T.nilable(::ClerkSDKBackend::Shared::InstanceSettingsObject), progressive_sign_up: T.nilable(T::Boolean), restricted_to_allowlist: T.nilable(T::Boolean)).void }
      def initialize(enhanced_email_deliverability: nil, from_email_address: nil, id: nil, object: nil, progressive_sign_up: nil, restricted_to_allowlist: nil)
        @enhanced_email_deliverability = enhanced_email_deliverability
        @from_email_address = from_email_address
        @id = id
        @object = object
        @progressive_sign_up = progressive_sign_up
        @restricted_to_allowlist = restricted_to_allowlist
      end
    end
  end
end