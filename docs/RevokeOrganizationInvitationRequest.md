# ClerkHttpClient::RevokeOrganizationInvitationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requesting_user_id** | **String** | The ID of the user that revokes the invitation. Must be an administrator in the organization. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::RevokeOrganizationInvitationRequest.new(
  requesting_user_id: null
)
```

