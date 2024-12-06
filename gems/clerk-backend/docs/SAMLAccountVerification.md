# ClerkBackend::SAMLAccountVerification

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-backend'

ClerkBackend::SAMLAccountVerification.openapi_one_of
# =>
# [
#   :'SAML',
#   :'Ticket'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-backend'

ClerkBackend::SAMLAccountVerification.build(data)
# => #<SAML:0x00007fdd4aab02a0>

ClerkBackend::SAMLAccountVerification.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SAML`
- `Ticket`
- `nil` (if no type matches)
