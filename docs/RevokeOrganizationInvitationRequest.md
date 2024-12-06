# ClerkBackend::RevokeOrganizationInvitationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requesting_user_id** | **String** | The ID of the user that revokes the invitation. Must be an administrator in the organization. |  |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::RevokeOrganizationInvitationRequest.new(
  requesting_user_id: null
)
```

