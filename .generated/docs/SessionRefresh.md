# ClerkHttpClient::SessionRefresh

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::SessionRefresh.openapi_one_of
# =>
# [
#   :'Cookies',
#   :'Token'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'clerk-http-client'

ClerkHttpClient::SessionRefresh.build(data)
# => #<Cookies:0x00007fdd4aab02a0>

ClerkHttpClient::SessionRefresh.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Cookies`
- `Token`
- `nil` (if no type matches)

