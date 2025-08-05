# ClerkHttpClient::VerificationPasskey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
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

instance = ClerkHttpClient::VerificationPasskey.new(
  object: null,
  status: null,
  strategy: null,
  nonce: null,
  message: null,
  attempts: null,
  expire_at: null,
  verified_at_client: null
)
```

