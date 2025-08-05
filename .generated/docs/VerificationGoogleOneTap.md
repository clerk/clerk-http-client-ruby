# ClerkHttpClient::VerificationGoogleOneTap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **expire_at** | **Integer** |  |  |
| **attempts** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |
| **error** | [**VerificationFromOauthError**](VerificationFromOauthError.md) |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerificationGoogleOneTap.new(
  object: null,
  status: null,
  strategy: null,
  expire_at: null,
  attempts: null,
  verified_at_client: null,
  error: null
)
```

