# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  
    # Response that contains a temporary Svix URL to access management dashboard
    class SvixURL < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig


      field :svix_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('svix_url') } }


      sig { params(svix_url: ::String).void }
      def initialize(svix_url: nil)
        @svix_url = svix_url
      end
    end
  end
end
