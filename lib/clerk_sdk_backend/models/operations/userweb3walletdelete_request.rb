# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class UserWeb3WalletDeleteRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the user that owns the web3 wallet
      field :user_id, ::String, { 'path_param': { 'field_name': 'user_id', 'style': 'simple', 'explode': false } }
      # The ID of the web3 wallet identity to be deleted
      field :web3_wallet_identification_id, ::String, { 'path_param': { 'field_name': 'web3_wallet_identification_id', 'style': 'simple', 'explode': false } }


      sig { params(user_id: ::String, web3_wallet_identification_id: ::String).void }
      def initialize(user_id: nil, web3_wallet_identification_id: nil)
        @user_id = user_id
        @web3_wallet_identification_id = web3_wallet_identification_id
      end
    end
  end
end
