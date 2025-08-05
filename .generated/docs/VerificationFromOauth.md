# ClerkHttpClient::VerificationFromOauth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **error** | [**VerificationFromOauthError**](VerificationFromOauthError.md) |  | [optional] |
| **expire_at** | **Integer** |  |  |
| **attempts** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerificationFromOauth.new(
  object: null,
  status: null,
  strategy: null,
  error: null,
  expire_at: null,
  attempts: null,
  verified_at_client: null
)
```

