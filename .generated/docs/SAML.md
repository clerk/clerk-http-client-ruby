# ClerkHttpClient::SAML

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **external_verification_redirect_url** | **String** |  |  |
| **error** | [**FromOAuthError**](FromOAuthError.md) |  | [optional] |
| **expire_at** | **Integer** |  |  |
| **attempts** | **Integer** |  |  |
| **verified_at_client** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SAML.new(
  status: null,
  strategy: null,
  external_verification_redirect_url: null,
  error: null,
  expire_at: null,
  attempts: null,
  verified_at_client: null
)
```

