# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class OAuthApplicationWithSecret < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :authorize_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('authorize_url') } }

      field :callback_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('callback_url') } }

      field :client_id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('client_id') } }
      # Unix timestamp of creation.
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :instance_id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('instance_id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }

      field :object, ::ClerkSDKBackend::Shared::OAuthApplicationWithSecretObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::OAuthApplicationWithSecretObject, false) } }

      field :public, T::Boolean, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public') } }

      field :scopes, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('scopes') } }

      field :token_fetch_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('token_fetch_url') } }
      # Unix timestamp of last update.
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :user_info_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('user_info_url') } }
      # Empty if public client.
      # 
      field :client_secret, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('client_secret') } }


      sig { params(authorize_url: ::String, callback_url: ::String, client_id: ::String, created_at: ::Integer, id: ::String, instance_id: ::String, name: ::String, object: ::ClerkSDKBackend::Shared::OAuthApplicationWithSecretObject, public: T::Boolean, scopes: ::String, token_fetch_url: ::String, updated_at: ::Integer, user_info_url: ::String, client_secret: T.nilable(::String)).void }
      def initialize(authorize_url: nil, callback_url: nil, client_id: nil, created_at: nil, id: nil, instance_id: nil, name: nil, object: nil, public: nil, scopes: nil, token_fetch_url: nil, updated_at: nil, user_info_url: nil, client_secret: nil)
        @authorize_url = authorize_url
        @callback_url = callback_url
        @client_id = client_id
        @created_at = created_at
        @id = id
        @instance_id = instance_id
        @name = name
        @object = object
        @public = public
        @scopes = scopes
        @token_fetch_url = token_fetch_url
        @updated_at = updated_at
        @user_info_url = user_info_url
        @client_secret = client_secret
      end
    end
  end
end
