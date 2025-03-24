# ClerkHttpClient::JWKSKeysInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::JWKSKeysInner.openapi_one_of
# =>
# [
#   :'JWKSEcdsaPrivateKey',
#   :'JWKSEcdsaPublicKey',
#   :'JWKSEd25519PrivateKey',
#   :'JWKSEd25519PublicKey',
#   :'JWKSRsaPrivateKey',
#   :'JWKSRsaPublicKey',
#   :'JWKSSymmetricKey'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::JWKSKeysInner.build(data)
# => #<JWKSEcdsaPrivateKey:0x00007fdd4aab02a0>

ClerkHttpClient::JWKSKeysInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `JWKSEcdsaPrivateKey`
- `JWKSEcdsaPublicKey`
- `JWKSEd25519PrivateKey`
- `JWKSEd25519PublicKey`
- `JWKSRsaPrivateKey`
- `JWKSRsaPublicKey`
- `JWKSSymmetricKey`
- `nil` (if no type matches)

