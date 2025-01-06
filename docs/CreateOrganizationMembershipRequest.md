# ClerkHttpClient::CreateOrganizationMembershipRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user that will be added as a member in the organization. The user needs to exist in the same instance as the organization and must not be a member of the given organization already. |  |
| **role** | **String** | The role that the new member will have in the organization. |  |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::CreateOrganizationMembershipRequest.new(
  user_id: null,
  role: null
)
```

