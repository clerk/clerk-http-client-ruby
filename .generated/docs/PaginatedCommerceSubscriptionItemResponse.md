# ClerkHttpClient::PaginatedCommerceSubscriptionItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CommerceSubscriptionItem&gt;**](CommerceSubscriptionItem.md) | Array of commerce subscription items. |  |
| **total_count** | **Integer** | Total number of commerce subscription items. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::PaginatedCommerceSubscriptionItemResponse.new(
  data: null,
  total_count: null
)
```

