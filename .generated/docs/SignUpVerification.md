# ClerkHttpClient::SignUpVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_action** | **String** |  | [optional] |
| **supported_strategies** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SignUpVerification.new(
  next_action: null,
  supported_strategies: null
)
```

