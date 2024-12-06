# ClerkBackend::VerifyTOTPRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The TOTP or backup code to verify |  |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::VerifyTOTPRequest.new(
  code: null
)
```

