# ClerkHttpClient::PaginatedCommercePlanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CommercePlan&gt;**](CommercePlan.md) | Array of commerce plans. |  |
| **total_count** | **Integer** | Total number of commerce plans. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::PaginatedCommercePlanResponse.new(
  data: null,
  total_count: null
)
```

