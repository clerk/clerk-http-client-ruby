# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class CreateSessionTokenFromTemplateRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # The ID of the session
      field :session_id, ::String, { 'path_param': { 'field_name': 'session_id', 'style': 'simple', 'explode': false } }
      # The name of the JWT Template defined in your instance (e.g. `custom_hasura`).
      field :template_name, ::String, { 'path_param': { 'field_name': 'template_name', 'style': 'simple', 'explode': false } }


      sig { params(session_id: ::String, template_name: ::String).void }
      def initialize(session_id: nil, template_name: nil)
        @session_id = session_id
        @template_name = template_name
      end
    end
  end
end
