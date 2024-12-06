# ClerkBackend::SAML

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **external_verification_redirect_url** | **String** |  |  |
| **error** | [**OauthError**](OauthError.md) |  | [optional] |
| **expire_at** | **Integer** |  |  |
| **attempts** | **Integer** |  | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::SAML.new(
  status: null,
  strategy: null,
  external_verification_redirect_url: null,
  error: null,
  expire_at: null,
  attempts: null
)
```

