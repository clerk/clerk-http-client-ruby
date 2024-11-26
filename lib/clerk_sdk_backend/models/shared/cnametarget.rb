# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class CNameTarget < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :host, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('host') } }
      # Denotes whether this CNAME target is required to be set in order for the domain to be considered deployed.
      # 
      field :required, T::Boolean, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('required') } }

      field :value, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('value') } }


      sig { params(host: ::String, required: T::Boolean, value: ::String).void }
      def initialize(host: nil, required: nil, value: nil)
        @host = host
        @required = required
        @value = value
      end
    end
  end
end
