# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class Web3Wallet < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }
      # String representing the object's type. Objects of the same type share the same value.
      # 
      field :object, ::ClerkSDKBackend::Shared::Web3WalletObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::Web3WalletObject, false) } }
      # Unix timestamp of creation
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :verification, ::Object, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('verification') } }

      field :web3_wallet, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('web3_wallet') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }


      sig { params(created_at: ::Integer, object: ::ClerkSDKBackend::Shared::Web3WalletObject, updated_at: ::Integer, verification: ::Object, web3_wallet: ::String, id: T.nilable(::String)).void }
      def initialize(created_at: nil, object: nil, updated_at: nil, verification: nil, web3_wallet: nil, id: nil)
        @created_at = created_at
        @object = object
        @updated_at = updated_at
        @verification = verification
        @web3_wallet = web3_wallet
        @id = id
      end
    end
  end
end