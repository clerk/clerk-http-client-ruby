# ClerkHttpClient::VerifyClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A JWT that represents the active client. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerifyClientRequest.new(
  token: null
)
```

