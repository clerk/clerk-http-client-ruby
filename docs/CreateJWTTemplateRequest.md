# ClerkHttpClient::CreateJWTTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | JWT template name | [optional] |
| **claims** | **Object** | JWT template claims in JSON format | [optional] |
| **lifetime** | **Float** | JWT token lifetime | [optional] |
| **allowed_clock_skew** | **Float** | JWT token allowed clock skew | [optional] |
| **custom_signing_key** | **Boolean** | Whether a custom signing key/algorithm is also provided for this template | [optional] |
| **signing_algorithm** | **String** | The custom signing algorithm to use when minting JWTs | [optional] |
| **signing_key** | **String** | The custom signing private key to use when minting JWTs | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

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

