# ClerkHttpClient::EmailAddressVerification

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::EmailAddressVerification.openapi_one_of
# =>
# [
#   :'Admin',
#   :'FromOAuth',
#   :'OTP',
#   :'Ticket'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::EmailAddressVerification.build(data)
# => #<Admin:0x00007fdd4aab02a0>

ClerkHttpClient::EmailAddressVerification.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Admin`
- `FromOAuth`
- `OTP`
- `Ticket`
- `nil` (if no type matches)

