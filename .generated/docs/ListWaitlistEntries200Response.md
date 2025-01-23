# ClerkHttpClient::ListWaitlistEntries200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;WaitlistEntry&gt;**](WaitlistEntry.md) |  |  |
| **total_count** | **Integer** | Total number of waitlist entries |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ListWaitlistEntries200Response.new(
  data: null,
  total_count: null
)
```

