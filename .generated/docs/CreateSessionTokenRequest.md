# ClerkHttpClient::CreateSessionTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_in_seconds** | **Float** | Use this parameter to override the default session token lifetime. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateSessionTokenRequest.new(
  expires_in_seconds: null
)
```

