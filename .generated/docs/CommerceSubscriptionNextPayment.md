# ClerkHttpClient::CommerceSubscriptionNextPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Integer** | Unix timestamp (milliseconds) of the next payment. |  |
| **date** | **Integer** | Unix timestamp (milliseconds) of the next payment date. |  |
| **amount** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommerceSubscriptionNextPayment.new(
  time: null,
  date: null,
  amount: null
)
```

