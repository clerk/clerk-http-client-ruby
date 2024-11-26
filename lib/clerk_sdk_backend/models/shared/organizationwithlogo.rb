# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class OrganizationWithLogo < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation.
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :image_url, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('image_url') } }

      field :max_allowed_memberships, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('max_allowed_memberships') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }

      field :object, ::ClerkSDKBackend::Shared::OrganizationWithLogoObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::OrganizationWithLogoObject, false) } }

      field :private_metadata, ::ClerkSDKBackend::Shared::OrganizationWithLogoPrivateMetadata, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('private_metadata') } }

      field :public_metadata, ::ClerkSDKBackend::Shared::OrganizationWithLogoPublicMetadata, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_metadata') } }

      field :slug, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('slug') } }
      # Unix timestamp of last update.
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :admin_delete_enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('admin_delete_enabled') } }

      field :created_by, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_by') } }

      field :has_image, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('has_image') } }
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :logo_url, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('logo_url') } }

      field :members_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('members_count') } }


      sig { params(created_at: ::Integer, id: ::String, image_url: ::String, max_allowed_memberships: ::Integer, name: ::String, object: ::ClerkSDKBackend::Shared::OrganizationWithLogoObject, private_metadata: ::ClerkSDKBackend::Shared::OrganizationWithLogoPrivateMetadata, public_metadata: ::ClerkSDKBackend::Shared::OrganizationWithLogoPublicMetadata, slug: ::String, updated_at: ::Integer, admin_delete_enabled: T.nilable(T::Boolean), created_by: T.nilable(::String), has_image: T.nilable(T::Boolean), logo_url: T.nilable(::String), members_count: T.nilable(::Integer)).void }
      def initialize(created_at: nil, id: nil, image_url: nil, max_allowed_memberships: nil, name: nil, object: nil, private_metadata: nil, public_metadata: nil, slug: nil, updated_at: nil, admin_delete_enabled: nil, created_by: nil, has_image: nil, logo_url: nil, members_count: nil)
        @created_at = created_at
        @id = id
        @image_url = image_url
        @max_allowed_memberships = max_allowed_memberships
        @name = name
        @object = object
        @private_metadata = private_metadata
        @public_metadata = public_metadata
        @slug = slug
        @updated_at = updated_at
        @admin_delete_enabled = admin_delete_enabled
        @created_by = created_by
        @has_image = has_image
        @logo_url = logo_url
        @members_count = members_count
      end
    end
  end
end