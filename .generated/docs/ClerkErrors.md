# ClerkHttpClient::ClerkErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;ClerkError&gt;**](ClerkError.md) |  |  |
| **meta** | **Object** |  | [optional] |
| **clerk_trace_id** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ClerkErrors.new(
  errors: null,
  meta: null,
  clerk_trace_id: null
)
```

