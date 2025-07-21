# ClerkHttpClient::GoogleOneTap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **expire_at** | **Integer** |  |  |
| **attempts** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |
| **error** | [**FromOAuthError**](FromOAuthError.md) |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::GoogleOneTap.new(
  status: null,
  strategy: null,
  expire_at: null,
  attempts: null,
  verified_at_client: null,
  error: null
)
```

