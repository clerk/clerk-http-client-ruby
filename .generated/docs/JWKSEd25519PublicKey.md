# ClerkHttpClient::JWKSEd25519PublicKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kid** | **String** |  |  |
| **alg** | **String** |  |  |
| **use** | **String** |  |  |
| **kty** | **String** |  |  |
| **crv** | **String** |  |  |
| **x** | **String** |  |  |
| **x5c** | **Array&lt;String&gt;** |  | [optional] |
| **x5t** | **String** |  | [optional] |
| **x5t_s256** | **String** |  | [optional] |
| **x5u** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::JWKSEd25519PublicKey.new(
  kid: null,
  alg: null,
  use: null,
  kty: null,
  crv: null,
  x: null,
  x5c: null,
  x5t: null,
  x5t_s256: null,
  x5u: null
)
```

