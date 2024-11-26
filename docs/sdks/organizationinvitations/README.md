# OrganizationInvitations
(*organization_invitations*)

## Overview

### Available Operations

* [all](#all) - Get a list of organization invitations for the current instance
* [create](#create) - Create and send an organization invitation
* [find_by_organization](#find_by_organization) - Get a list of organization invitations
* [create_bulk](#create_bulk) - Bulk create and send organization invitations
* [find](#find) - Retrieve an organization invitation by ID
* [delete](#delete) - Revoke a pending organization invitation

## all

This request returns the list of organization invitations for the instance.
Results can be paginated using the optional `limit` and `offset` query parameters.
You can filter them by providing the 'status' query parameter, that accepts multiple values.
You can change the order by providing the 'order' query parameter, that accepts multiple values.
You can filter by the invited user email address providing the `query` query parameter.
The organization invitations are ordered by descending creation date by default.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::ListInstanceOrganizationInvitationsRequest.new()
    
res = s.organization_invitations.all(req)

if ! res.organization_invitations_with_public_organization_data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                          | Type                                                                                                                                               | Required                                                                                                                                           | Description                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                          | [::ClerkSDKBackend::Operations::ListInstanceOrganizationInvitationsRequest](../../models/operations/listinstanceorganizationinvitationsrequest.md) | :heavy_check_mark:                                                                                                                                 | The request object to use for the request.                                                                                                         |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListInstanceOrganizationInvitationsResponse)](../../models/operations/listinstanceorganizationinvitationsresponse.md)**



## create

Creates a new organization invitation and sends an email to the provided `email_address` with a link to accept the invitation and join the organization.
You can specify the `role` for the invited organization member.

New organization invitations get a "pending" status until they are revoked by an organization administrator or accepted by the invitee.

The request body supports passing an optional `redirect_url` parameter.
When the invited user clicks the link to accept the invitation, they will be redirected to the URL provided.
Use this parameter to implement a custom invitation acceptance flow.

You can specify the ID of the user that will send the invitation with the `inviter_user_id` parameter.
That user must be a member with administrator privileges in the organization.
Only "admin" members can create organization invitations.

You can optionally provide public and private metadata for the organization invitation.
The public metadata are visible by both the Frontend and the Backend whereas the private ones only by the Backend.
When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_invitations.create(organization_id="<id>", request_body=::ClerkSDKBackend::Operations::CreateOrganizationInvitationRequestBody.new(
  email_address: "Loyal79@yahoo.com",
  role: "<value>",
))

if ! res.organization_invitation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                    | Type                                                                                                                                         | Required                                                                                                                                     | Description                                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                            | *::String*                                                                                                                                   | :heavy_check_mark:                                                                                                                           | The ID of the organization for which to send the invitation                                                                                  |
| `request_body`                                                                                                                               | [::ClerkSDKBackend::Operations::CreateOrganizationInvitationRequestBody](../../models/operations/createorganizationinvitationrequestbody.md) | :heavy_check_mark:                                                                                                                           | N/A                                                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateOrganizationInvitationResponse)](../../models/operations/createorganizationinvitationresponse.md)**



## find_by_organization

This request returns the list of organization invitations.
Results can be paginated using the optional `limit` and `offset` query parameters.
You can filter them by providing the 'status' query parameter, that accepts multiple values.
The organization invitations are ordered by descending creation date.
Most recent invitations will be returned first.
Any invitations created as a result of an Organization Domain are not included in the results.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_invitations.find_by_organization(organization_id="<id>", limit=629.39, offset=4814.08, status=::ClerkSDKBackend::Operations::ListOrganizationInvitationsQueryParamStatus::PENDING)

if ! res.organization_invitations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                       | Type                                                                                                                                                            | Required                                                                                                                                                        | Description                                                                                                                                                     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                                               | *::String*                                                                                                                                                      | :heavy_check_mark:                                                                                                                                              | The organization ID.                                                                                                                                            |
| `limit`                                                                                                                                                         | *T.nilable(::Float)*                                                                                                                                            | :heavy_minus_sign:                                                                                                                                              | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                                           |
| `offset`                                                                                                                                                        | *T.nilable(::Float)*                                                                                                                                            | :heavy_minus_sign:                                                                                                                                              | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`.               |
| `status`                                                                                                                                                        | [T.nilable(::ClerkSDKBackend::Operations::ListOrganizationInvitationsQueryParamStatus)](../../models/operations/listorganizationinvitationsqueryparamstatus.md) | :heavy_minus_sign:                                                                                                                                              | Filter organization invitations based on their status                                                                                                           |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListOrganizationInvitationsResponse)](../../models/operations/listorganizationinvitationsresponse.md)**



## create_bulk

Creates new organization invitations in bulk and sends out emails to the provided email addresses with a link to accept the invitation and join the organization.
You can specify a different `role` for each invited organization member.
New organization invitations get a "pending" status until they are revoked by an organization administrator or accepted by the invitee.
The request body supports passing an optional `redirect_url` parameter for each invitation.
When the invited user clicks the link to accept the invitation, they will be redirected to the provided URL.
Use this parameter to implement a custom invitation acceptance flow.
You can specify the ID of the user that will send the invitation with the `inviter_user_id` parameter. Each invitation
can have a different inviter user.
Inviter users must be members with administrator privileges in the organization.
Only "admin" members can create organization invitations.
You can optionally provide public and private metadata for each organization invitation. The public metadata are visible
by both the Frontend and the Backend, whereas the private metadata are only visible by the Backend.
When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_invitations.create_bulk(organization_id="<id>", request_body=[
  ::ClerkSDKBackend::Operations::RequestBody.new(
    email_address: "Suzanne.Mills71@yahoo.com",
    role: "<value>",
  ),
])

if ! res.organization_invitations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `organization_id`                                                                              | *::String*                                                                                     | :heavy_check_mark:                                                                             | The organization ID.                                                                           |
| `request_body`                                                                                 | T::Array<[::ClerkSDKBackend::Operations::RequestBody](../../models/operations/requestbody.md)> | :heavy_check_mark:                                                                             | N/A                                                                                            |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateOrganizationInvitationBulkResponse)](../../models/operations/createorganizationinvitationbulkresponse.md)**



## find

Use this request to get an existing organization invitation by ID.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_invitations.find(organization_id="<id>", invitation_id="<id>")

if ! res.organization_invitation.nil?
  # handle response
end

```

### Parameters

| Parameter                       | Type                            | Required                        | Description                     |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| `organization_id`               | *::String*                      | :heavy_check_mark:              | The organization ID.            |
| `invitation_id`                 | *::String*                      | :heavy_check_mark:              | The organization invitation ID. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetOrganizationInvitationResponse)](../../models/operations/getorganizationinvitationresponse.md)**



## delete

Use this request to revoke a previously issued organization invitation.
Revoking an organization invitation makes it invalid; the invited user will no longer be able to join the organization with the revoked invitation.
Only organization invitations with "pending" status can be revoked.
The request accepts the `requesting_user_id` parameter to specify the user which revokes the invitation.
Only users with "admin" role can revoke invitations.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_invitations.delete(organization_id="<id>", invitation_id="<id>", request_body=::ClerkSDKBackend::Operations::RevokeOrganizationInvitationRequestBody.new())

if ! res.organization_invitation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                               | Type                                                                                                                                                    | Required                                                                                                                                                | Description                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                                       | *::String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                      | The organization ID.                                                                                                                                    |
| `invitation_id`                                                                                                                                         | *::String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                      | The organization invitation ID.                                                                                                                         |
| `request_body`                                                                                                                                          | [T.nilable(::ClerkSDKBackend::Operations::RevokeOrganizationInvitationRequestBody)](../../models/operations/revokeorganizationinvitationrequestbody.md) | :heavy_minus_sign:                                                                                                                                      | N/A                                                                                                                                                     |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::RevokeOrganizationInvitationResponse)](../../models/operations/revokeorganizationinvitationresponse.md)**

