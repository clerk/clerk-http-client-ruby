# ClerkHttpClient::CommerceSubscriptionCreditResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) | Credit amount. | [optional] |
| **cycle_remaining_percent** | **Float** | Percentage of the billing cycle remaining. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommerceSubscriptionCreditResponse.new(
  amount: null,
  cycle_remaining_percent: null
)
```

