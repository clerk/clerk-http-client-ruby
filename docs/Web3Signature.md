# ClerkHttpClient::Web3Signature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **nonce** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **attempts** | **Integer** |  | [optional] |
| **expire_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Web3Signature.new(
  status: null,
  strategy: null,
  nonce: null,
  message: null,
  attempts: null,
  expire_at: null
)
```

