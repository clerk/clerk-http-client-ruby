# ClerkBackend::CreatePhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID representing the user | [optional] |
| **phone_number** | **String** | The new phone number. Must adhere to the E.164 standard for phone number format. | [optional] |
| **verified** | **Boolean** | When created, the phone number will be marked as verified. | [optional] |
| **primary** | **Boolean** | Create this phone number as the primary phone number for the user. Default: false, unless it is the first phone number. | [optional] |
| **reserved_for_second_factor** | **Boolean** | Create this phone number as reserved for multi-factor authentication. The phone number must also be verified. If there are no other reserved second factors, the phone number will be set as the default second factor. | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::CreatePhoneNumberRequest.new(
  user_id: null,
  phone_number: null,
  verified: null,
  primary: null,
  reserved_for_second_factor: null
)
```

