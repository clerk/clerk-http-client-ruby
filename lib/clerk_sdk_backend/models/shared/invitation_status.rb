# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module ClerkSDKBackend
  module Shared
  

    class InvitationStatus < T::Enum
      enums do
        PENDING = new('pending')
        ACCEPTED = new('accepted')
        REVOKED = new('revoked')
        EXPIRED = new('expired')
      end
    end
  end
end
