# ClerkHttpClient::UpdateEmailAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verified** | **Boolean** | The email address will be marked as verified. | [optional] |
| **primary** | **Boolean** | Set this email address as the primary email address for the user. | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::UpdateEmailAddressRequest.new(
  verified: null,
  primary: null
)
```

