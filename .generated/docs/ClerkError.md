# ClerkHttpClient::ClerkError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  |  |
| **long_message** | **String** |  |  |
| **code** | **String** |  |  |
| **meta** | **Object** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ClerkError.new(
  message: null,
  long_message: null,
  code: null,
  meta: null
)
```

