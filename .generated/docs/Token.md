# ClerkHttpClient::Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **jwt** | **String** | String representing the encoded jwt value.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Token.new(
  object: null,
  jwt: null
)
```

