# ClerkHttpClient::VerifyTOTPRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The TOTP or backup code to verify |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerifyTOTPRequest.new(
  code: null
)
```

