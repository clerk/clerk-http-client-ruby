# ClerkBackend::Web3Signature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **nonce** | **String** |  | [optional] |
| **attempts** | **Integer** |  | [optional] |
| **expire_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::Web3Signature.new(
  status: null,
  strategy: null,
  nonce: null,
  attempts: null,
  expire_at: null
)
```

