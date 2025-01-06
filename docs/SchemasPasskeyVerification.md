# ClerkHttpClient::SchemasPasskeyVerification

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client-ruby'

ClerkHttpClient::SchemasPasskeyVerification.openapi_one_of
# =>
# [
#   :'Passkey'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client-ruby'

ClerkHttpClient::SchemasPasskeyVerification.build(data)
# => #<Passkey:0x00007fdd4aab02a0>

ClerkHttpClient::SchemasPasskeyVerification.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Passkey`
- `nil` (if no type matches)

