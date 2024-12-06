# ClerkBackend::UpdateEmailAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verified** | **Boolean** | The email address will be marked as verified. | [optional] |
| **primary** | **Boolean** | Set this email address as the primary email address for the user. | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::UpdateEmailAddressRequest.new(
  verified: null,
  primary: null
)
```

