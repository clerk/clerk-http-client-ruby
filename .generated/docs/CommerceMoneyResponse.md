# ClerkHttpClient::CommerceMoneyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount in cents. |  |
| **amount_formatted** | **String** | The formatted amount as a string (e.g., \&quot;$49.99\&quot;). |  |
| **currency** | **String** | The currency code (e.g., \&quot;USD\&quot;). |  |
| **currency_symbol** | **String** | The currency symbol (e.g., \&quot;$\&quot;). |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommerceMoneyResponse.new(
  amount: null,
  amount_formatted: null,
  currency: null,
  currency_symbol: null
)
```

