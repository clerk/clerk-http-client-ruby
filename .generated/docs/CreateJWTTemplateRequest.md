# ClerkHttpClient::CreateJWTTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | JWT template name |  |
| **claims** | **Object** | JWT template claims in JSON format |  |
| **lifetime** | **Integer** | JWT token lifetime | [optional] |
| **allowed_clock_skew** | **Integer** | JWT token allowed clock skew | [optional] |
| **custom_signing_key** | **Boolean** | Whether a custom signing key/algorithm is also provided for this template | [optional] |
| **signing_algorithm** | **String** | The custom signing algorithm to use when minting JWTs. Required if &#x60;custom_signing_key&#x60; is &#x60;true&#x60;. | [optional] |
| **signing_key** | **String** | The custom signing private key to use when minting JWTs. Required if &#x60;custom_signing_key&#x60; is &#x60;true&#x60;. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateJWTTemplateRequest.new(
  name: null,
  claims: null,
  lifetime: null,
  allowed_clock_skew: null,
  custom_signing_key: null,
  signing_algorithm: null,
  signing_key: null
)
```

