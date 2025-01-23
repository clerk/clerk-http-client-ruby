# ClerkHttpClient::FromOAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **error** | [**FromOAuthError**](FromOAuthError.md) |  | [optional] |
| **expire_at** | **Integer** |  |  |
| **attempts** | **Integer** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::FromOAuth.new(
  status: null,
  strategy: null,
  error: null,
  expire_at: null,
  attempts: null
)
```

