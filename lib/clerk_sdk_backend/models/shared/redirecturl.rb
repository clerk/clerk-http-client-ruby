# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # List of Redirect URLs
    class RedirectURL < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation.
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :object, ::ClerkSDKBackend::Shared::RedirectURLObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::RedirectURLObject, false) } }
      # Unix timestamp of last update.
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('url') } }


      sig { params(created_at: ::Integer, id: ::String, object: ::ClerkSDKBackend::Shared::RedirectURLObject, updated_at: ::Integer, url: ::String).void }
      def initialize(created_at: nil, id: nil, object: nil, updated_at: nil, url: nil)
        @created_at = created_at
        @id = id
        @object = object
        @updated_at = updated_at
        @url = url
      end
    end
  end
end