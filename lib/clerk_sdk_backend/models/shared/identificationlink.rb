# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class IdentificationLink < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :type, ::ClerkSDKBackend::Shared::Type, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::Type, false) } }


      sig { params(id: ::String, type: ::ClerkSDKBackend::Shared::Type).void }
      def initialize(id: nil, type: nil)
        @id = id
        @type = type
      end
    end
  end
end
