# ClerkHttpClient::VerificationAdmin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **attempts** | **Integer** |  |  |
| **expire_at** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerificationAdmin.new(
  object: null,
  status: null,
  strategy: null,
  attempts: null,
  expire_at: null,
  verified_at_client: null
)
```

