# ClerkHttpClient::OTP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **attempts** | **Integer** |  |  |
| **expire_at** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OTP.new(
  status: null,
  strategy: null,
  attempts: null,
  expire_at: null,
  verified_at_client: null
)
```

