# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class Organization < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp of creation.
      # 
      field :created_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_at') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('id') } }

      field :max_allowed_memberships, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('max_allowed_memberships') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('name') } }

      field :object, ::ClerkSDKBackend::Shared::OrganizationObject, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('object'), 'decoder': Utils.enum_from_string(::ClerkSDKBackend::Shared::OrganizationObject, false) } }

      field :private_metadata, ::ClerkSDKBackend::Shared::OrganizationPrivateMetadata, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('private_metadata') } }

      field :public_metadata, ::ClerkSDKBackend::Shared::OrganizationPublicMetadata, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('public_metadata') } }

      field :slug, ::String, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('slug') } }
      # Unix timestamp of last update.
      # 
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('updated_at') } }

      field :admin_delete_enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('admin_delete_enabled') } }

      field :created_by, T.nilable(::String), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('created_by') } }

      field :members_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::ClerkSDKBackend::Utils.field_name('members_count') } }


      sig { params(created_at: ::Integer, id: ::String, max_allowed_memberships: ::Integer, name: ::String, object: ::ClerkSDKBackend::Shared::OrganizationObject, private_metadata: ::ClerkSDKBackend::Shared::OrganizationPrivateMetadata, public_metadata: ::ClerkSDKBackend::Shared::OrganizationPublicMetadata, slug: ::String, updated_at: ::Integer, admin_delete_enabled: T.nilable(T::Boolean), created_by: T.nilable(::String), members_count: T.nilable(::Integer)).void }
      def initialize(created_at: nil, id: nil, max_allowed_memberships: nil, name: nil, object: nil, private_metadata: nil, public_metadata: nil, slug: nil, updated_at: nil, admin_delete_enabled: nil, created_by: nil, members_count: nil)
        @created_at = created_at
        @id = id
        @max_allowed_memberships = max_allowed_memberships
        @name = name
        @object = object
        @private_metadata = private_metadata
        @public_metadata = public_metadata
        @slug = slug
        @updated_at = updated_at
        @admin_delete_enabled = admin_delete_enabled
        @created_by = created_by
        @members_count = members_count
      end
    end
  end
end