# ClerkHttpClient::UpdatePhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verified** | **Boolean** | The phone number will be marked as verified. | [optional] |
| **primary** | **Boolean** | Set this phone number as the primary phone number for the user. | [optional] |
| **reserved_for_second_factor** | **Boolean** | Set this phone number as reserved for multi-factor authentication. The phone number must also be verified. If there are no other reserved second factors, the phone number will be set as the default second factor. | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::UpdatePhoneNumberRequest.new(
  verified: null,
  primary: null,
  reserved_for_second_factor: null
)
```

