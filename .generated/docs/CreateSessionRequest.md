# ClerkHttpClient::CreateSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID representing the user |  |
| **active_organization_id** | **String** | The ID of the organization to set as active for this session | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateSessionRequest.new(
  user_id: null,
  active_organization_id: null
)
```

