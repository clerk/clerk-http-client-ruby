# ClerkHttpClient::OauthError

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client-ruby'

ClerkHttpClient::OauthError.openapi_one_of
# =>
# [
#   :'ClerkError'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client-ruby'

ClerkHttpClient::OauthError.build(data)
# => #<ClerkError:0x00007fdd4aab02a0>

ClerkHttpClient::OauthError.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ClerkError`
- `nil` (if no type matches)

