# ClerkBackend::Passkey

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
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::Passkey.new(
  status: null,
  strategy: null,
  nonce: null,
  attempts: null,
  expire_at: null
)
```

