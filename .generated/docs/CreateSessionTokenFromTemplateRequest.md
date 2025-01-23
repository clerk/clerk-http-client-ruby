# ClerkHttpClient::CreateSessionTokenFromTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_in_seconds** | **Float** | Use this parameter to override the JWT token lifetime. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateSessionTokenFromTemplateRequest.new(
  expires_in_seconds: null
)
```

