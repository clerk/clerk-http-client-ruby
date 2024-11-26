# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  

    class ListInstanceOrganizationInvitationsRequest < ::ClerkSDKBackend::Utils::FieldAugmented
      extend T::Sig

      # Applies a limit to the number of results returned.
      # Can be used for paginating the results together with `offset`.
      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }
      # Skip the first `offset` results when paginating.
      # Needs to be an integer greater or equal to zero.
      # To be used in conjunction with `limit`.
      field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }
      # Allows to return organization invitations in a particular order.
      # At the moment, you can order the returned organization invitations either by their `created_at` or `email_address`.
      # In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by.
      # For example, if you want organization invitations to be returned in descending order according to their `created_at` property, you can use `-created_at`.
      # If you don't use `+` or `-`, then `+` is implied.
      # Defaults to `-created_at`.
      field :order_by, T.nilable(::String), { 'query_param': { 'field_name': 'order_by', 'style': 'form', 'explode': true } }
      # Filter organization invitations based on their `email_address`
      field :query, T.nilable(::String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }
      # Filter organization invitations based on their status
      field :status, T.nilable(::ClerkSDKBackend::Operations::ListInstanceOrganizationInvitationsQueryParamStatus), { 'query_param': { 'field_name': 'status', 'style': 'form', 'explode': true } }


      sig { params(limit: T.nilable(::Float), offset: T.nilable(::Float), order_by: T.nilable(::String), query: T.nilable(::String), status: T.nilable(::ClerkSDKBackend::Operations::ListInstanceOrganizationInvitationsQueryParamStatus)).void }
      def initialize(limit: nil, offset: nil, order_by: nil, query: nil, status: nil)
        @limit = limit
        @offset = offset
        @order_by = order_by
        @query = query
        @status = status
      end
    end
  end
end