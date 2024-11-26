# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class DeleteSAMLConnectionResponse < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Payment required
      field :clerk_errors, T.nilable(::ClerkSDKBackend::Shared::ClerkErrors)
      # Deleted Object
      field :deleted_object, T.nilable(::ClerkSDKBackend::Shared::DeletedObject)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, clerk_errors: T.nilable(::ClerkSDKBackend::Shared::ClerkErrors), deleted_object: T.nilable(::ClerkSDKBackend::Shared::DeletedObject)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, clerk_errors: nil, deleted_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @clerk_errors = clerk_errors
        @deleted_object = deleted_object
      end
    end
  end
end
