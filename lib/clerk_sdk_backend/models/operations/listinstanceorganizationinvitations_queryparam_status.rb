# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Operations
  
    # ListInstanceOrganizationInvitationsQueryParamStatus - Filter organization invitations based on their status
    class ListInstanceOrganizationInvitationsQueryParamStatus < T::Enum
      enums do
        PENDING = new('pending')
        ACCEPTED = new('accepted')
        REVOKED = new('revoked')
      end
    end
  end
end