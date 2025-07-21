# ClerkHttpClient::ExternalAccountWithVerificationVerification

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::ExternalAccountWithVerificationVerification.openapi_one_of
# =>
# [
#   :'GoogleOneTap',
#   :'Oauth'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::ExternalAccountWithVerificationVerification.build(data)
# => #<GoogleOneTap:0x00007fdd4aab02a0>

ClerkHttpClient::ExternalAccountWithVerificationVerification.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GoogleOneTap`
- `Oauth`
- `nil` (if no type matches)

