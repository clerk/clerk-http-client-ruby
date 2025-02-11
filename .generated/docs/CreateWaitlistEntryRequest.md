# ClerkHttpClient::CreateWaitlistEntryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | **String** | The email address to add to the waitlist |  |
| **notify** | **Boolean** | Optional flag which denotes whether a confirmation email should be sent to the given email address. Defaults to &#x60;true&#x60;. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateWaitlistEntryRequest.new(
  email_address: null,
  notify: null
)
```

