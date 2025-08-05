# ClerkHttpClient::SAMLAccountVerification

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::SAMLAccountVerification.openapi_one_of
# =>
# [
#   :'VerificationSaml',
#   :'VerificationTicket'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::SAMLAccountVerification.openapi_discriminator_name
# => :'object'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::SAMLAccountVerification.build(data)
# => #<VerificationSaml:0x00007fdd4aab02a0>

ClerkHttpClient::SAMLAccountVerification.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `VerificationSaml`
- `VerificationTicket`
- `nil` (if no type matches)

