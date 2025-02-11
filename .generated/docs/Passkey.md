# ClerkHttpClient::Passkey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **nonce** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **attempts** | **Integer** |  |  |
| **expire_at** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Passkey.new(
  status: null,
  strategy: null,
  nonce: null,
  message: null,
  attempts: null,
  expire_at: null,
  verified_at_client: null
)
```

