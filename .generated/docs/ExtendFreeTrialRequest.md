# ClerkHttpClient::ExtendFreeTrialRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extend_to** | **Time** | RFC3339 timestamp to extend the free trial to. Must be in the future and not more than 365 days from now. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ExtendFreeTrialRequest.new(
  extend_to: 2026-01-08T00:00Z
)
```

