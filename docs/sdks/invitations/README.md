# Invitations
(*invitations*)

## Overview

Invitations allow you to invite someone to sign up to your application, via email.
<https://clerk.com/docs/authentication/invitations>

### Available Operations

* [create](#create) - Create an invitation
* [all](#all) - List all invitations
* [delete](#delete) - Revokes an invitation

## create

Creates a new invitation for the given email address and sends the invitation email.
Keep in mind that you cannot create an invitation if there is already one for the given email address.
Also, trying to create an invitation for an email address that already exists in your application will result to an error.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateInvitationRequestBody.new(
  email_address: "Loyal79@yahoo.com",
)
    
res = s.invitations.create(req)

if ! res.invitation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                            | Type                                                                                                                 | Required                                                                                                             | Description                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                            | [::ClerkSDKBackend::Operations::CreateInvitationRequestBody](../../models/operations/createinvitationrequestbody.md) | :heavy_check_mark:                                                                                                   | The request object to use for the request.                                                                           |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateInvitationResponse)](../../models/operations/createinvitationresponse.md)**



## all

Returns all non-revoked invitations for your application, sorted by creation date

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.invitations.all(limit=2433.94, offset=7280.53, status=::ClerkSDKBackend::Operations::ListInvitationsQueryParamStatus::ACCEPTED)

if ! res.invitation_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `limit`                                                                                                                                   | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                     |
| `offset`                                                                                                                                  | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`. |
| `status`                                                                                                                                  | [T.nilable(::ClerkSDKBackend::Operations::ListInvitationsQueryParamStatus)](../../models/operations/listinvitationsqueryparamstatus.md)   | :heavy_minus_sign:                                                                                                                        | Filter invitations based on their status                                                                                                  |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListInvitationsResponse)](../../models/operations/listinvitationsresponse.md)**



## delete

Revokes the given invitation.
Revoking an invitation will prevent the user from using the invitation link that was sent to them.
However, it doesn't prevent the user from signing up if they follow the sign up flow.
Only active (i.e. non-revoked) invitations can be revoked.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.invitations.delete(invitation_id="<id>")

if ! res.invitation_revoked.nil?
  # handle response
end

```

### Parameters

| Parameter                              | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `invitation_id`                        | *::String*                             | :heavy_check_mark:                     | The ID of the invitation to be revoked |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::RevokeInvitationResponse)](../../models/operations/revokeinvitationresponse.md)**

