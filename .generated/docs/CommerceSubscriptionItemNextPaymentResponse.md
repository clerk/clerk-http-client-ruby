# ClerkHttpClient::CommerceSubscriptionItemNextPaymentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) | Amount for the next payment. | [optional] |
| **date** | **Integer** | Unix timestamp (in milliseconds) for the next payment date. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommerceSubscriptionItemNextPaymentResponse.new(
  amount: null,
  date: null
)
```

