# ClerkHttpClient::CreateOrganizationInvitationBulkRequestInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | **String** | The email address of the new member that is going to be invited to the organization |  |
| **inviter_user_id** | **String** | The ID of the user that invites the new member to the organization. Must be an administrator in the organization. | [optional] |
| **role** | **String** | The role of the new member in the organization. |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the organization invitation, read-only from the Frontend API and fully accessible (read/write) from the Backend API. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership. | [optional] |
| **private_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the organization invitation, fully accessible (read/write) from the Backend API but not visible from the Frontend API. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership. | [optional] |
| **redirect_url** | **String** | Optional URL that the invitee will be redirected to once they accept the invitation by clicking the join link in the invitation email. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateOrganizationInvitationBulkRequestInner.new(
  email_address: null,
  inviter_user_id: null,
  role: null,
  public_metadata: null,
  private_metadata: null,
  redirect_url: null
)
```

