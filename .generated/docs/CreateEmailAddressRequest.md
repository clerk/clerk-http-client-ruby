# ClerkHttpClient::CreateEmailAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID representing the user | [optional] |
| **email_address** | **String** | The new email address. Must adhere to the RFC 5322 specification for email address format. | [optional] |
| **verified** | **Boolean** | When created, the email address will be marked as verified. | [optional] |
| **primary** | **Boolean** | Create this email address as the primary email address for the user. Default: false, unless it is the first email address. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateEmailAddressRequest.new(
  user_id: null,
  email_address: null,
  verified: null,
  primary: null
)
```

