# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class CreateAllowlistIdentifierResponse < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Success
      field :allowlist_identifier, T.nilable(::ClerkSDKBackend::Shared::AllowlistIdentifier)
      # Request was not successful
      field :clerk_errors, T.nilable(::ClerkSDKBackend::Shared::ClerkErrors)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, allowlist_identifier: T.nilable(::ClerkSDKBackend::Shared::AllowlistIdentifier), clerk_errors: T.nilable(::ClerkSDKBackend::Shared::ClerkErrors)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, allowlist_identifier: nil, clerk_errors: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @allowlist_identifier = allowlist_identifier
        @clerk_errors = clerk_errors
      end
    end
  end
end
